using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class User_mobilemanuals : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select o.mobile,m.os,m.booklet from mobilebooklet m join mobileos o on m.mobile=o.mid where m.status='not'");
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
}