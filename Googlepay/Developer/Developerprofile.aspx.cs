using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Developer_Developerprofile : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataList1.Visible = false;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        DataList1.Visible = true;
        int dvid = Convert.ToInt32(Session["dvid"].ToString());
        DataTable dt = cs.select("select * from developerreg where dvid='"+ dvid+"'");
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename;
        if (FileUpload1.HasFile)
        {
            int dvid =Convert.ToInt32( Session["dvid"].ToString());
            filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Developer/photo/") + filename);
            path = "~/Developer/photo/" + FileUpload1.FileName;
            string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);

            int a = cs.insert("update developerreg set photo='" + path.ToString() + "' where dvid='"+dvid+"' ");
            Response.Redirect("Developerprofile.aspx");
        }
    }
}