using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Net;

public partial class Admin_viewfraud : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string IPAddress;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
           



        }
    }



    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "Recommend")
        {
            DataTable dt = cs.select("select  u.uid,u.name,d.Appname,r.date,r.time,r.ip from Recommend r join userregistration u on r.uid=u.uid join AddApp d on r.apid=d.apid where r.status='fraud'");
            if (dt.Rows.Count > 0)
            {
                //GridView2.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        if (DropDownList1.SelectedValue == "Download")
        {
            DataTable dt = cs.select("select  u.uid,u.name,d.Appname,r.date,r.time,r.ip from downloadcount r join userregistration u on r.uid=u.uid join AddApp d on r.apid=d.apid where r.status='fraud'");
            if (dt.Rows.Count > 0)
            {
                //GridView2.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
        if (DropDownList1.SelectedValue == "Rating & comment")
        {
            DataTable dt = cs.select("select distinct u.uid,  u.uid,u.name,d.Appname,r.date,r.time,r.ip from Rating r join userregistration u on r.uid=u.uid join AddApp d on r.apid=d.apid where r.status='fraud'");
            if (dt.Rows.Count > 0)
            {
                //GridView2.Visible = false;
                GridView1.Visible = true;
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view1")
        {
            DataTable dt = cs.select("select * from userregistration where uid='" + e.CommandArgument + "'");
            DataList1.DataSource = dt;
            DataList1.DataBind();
            if (dt.Rows.Count > 0)
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
            }

        }
    }
}