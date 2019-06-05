using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_mobilemanuals : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select b.mbid,b.status, m.mobile,m.os,d.name,b.booklet from mobilebooklet b left join mobileos m on b.mobile=m.mid join developerreg d on b.dvid=d.dvid");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void DownloadFile(object sender, EventArgs e)
    {
        
        string filePath = (sender as LinkButton).CommandArgument;
        Response.ContentType = ContentType;
        //string s = Path.GetFileName(filePath);
        Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
        Response.WriteFile(filePath);
        Response.End();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName== "view1")
        {
            DataTable dt = cs.select("select * from mobilebooklet where mbid='" + e.CommandArgument + "'");
            if(dt.Rows.Count>0)
            {
                string status = dt.Rows[0]["status"].ToString();
                if(status== "malware")
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ok();", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "okk();", true);
                }
            }

          
        }
    }
}