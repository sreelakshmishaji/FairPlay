using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class User_symmetrickey : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string apid = Request.QueryString["id"].ToString();
            int uid = Convert.ToInt32(Session["user"].ToString());
            DataTable dm = cs.select("select * from Symmetric where uid='" + uid + "' and Symmetrickey!='pending'");
            if (dm.Rows.Count > 0)
            {
                LinkButton4.Visible = true;

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["key"].ToString() == txtkey.Text.ToString())
        {
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            //string s = Path.GetFileName(filePath);
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        int a = cs.insert("insert into Symmetric(uid,apid,Symmetrickey,status)values('" + uid + "','" + apid + "','pending','pending')");
        Label1.Text = "Wait for Generating Symmetric Key";
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from Symmetric where uid='" + uid + "' and apid='" + apid + "'");
        Label1.Text = "the key is " + dt.Rows[0]["Symmetrickey"].ToString();
        Session["key"] = dt.Rows[0]["Symmetrickey"].ToString();
    }
}