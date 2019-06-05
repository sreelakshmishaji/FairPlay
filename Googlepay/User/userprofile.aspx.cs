using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User_userprofile : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList1.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        string filename;
        if (FileUpload1.HasFile)
        {
            int uid = Convert.ToInt32(Session["user"].ToString());
            filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/User/photo/") + filename);
            path = "~/User/photo/" + FileUpload1.FileName;
            string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);

            int a = cs.insert("update userregistration set photo='" + path.ToString() + "' where uid='" + uid + "' ");
            Response.Redirect("userprofile.aspx");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

        DataList1.Visible = true;
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from userregistration where uid='" + uid + "'");
        DataList1.DataSource = dt;
        DataList1.DataBind();





    }
}