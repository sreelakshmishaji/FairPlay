using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Developer_MobileAndOs : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = cs.insert("insert into mobileos(mobile,os)values('" + txtmobile.Text + "','" + txtos.Text + "')");
        if(a>0)
        {
            txtmobile.Text = "";
            txtos.Text = "";
            Response.Redirect("MobileAndOs.aspx");
        }
    }
}