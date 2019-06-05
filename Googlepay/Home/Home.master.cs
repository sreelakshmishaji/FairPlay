using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home_Home : System.Web.UI.MasterPage
{
    Class1 cs = new Class1();   
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int a = cs.insert("insert into developerreg(name,email,phone,address,date,gender,username,password,status,count)values('" + txtdevlprname.Text + "','" + txtdevlpemail.Text + "','" + txtdvlpmob.Text + "','" + txtdvlpaddrs.Text + "','" + txtdvlpdate.Text + "','" + DropDownList2.SelectedItem.Text + "','" + txtdvlpusername.Text + "','" + txtdeveloppassword.Text + "','pending','0')");
        if(a>0)
        {
            txtdevlprname.Text = "";
            txtdevlpemail.Text = "";
            txtdvlpaddrs.Text = "";
            txtdvlpdate.Text = "";
            txtdvlpmob.Text = "";
            txtdvlpusername.Text = "";
            Response.Redirect("Home.aspx");
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

        }
    }

    

    protected void Button1_Click1(object sender, EventArgs e)
    {

        int a = cs.insert("insert into userregistration(name,email,phone,address,date,gender,username,password,status)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtaddress.Text + "','" + txtdate.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','pending')");
        if (a > 0)
        {
            txtname.Text = "";
            txtemail.Text = "";
            txtaddress.Text = "";
            txtdate.Text = "";
            txtphone.Text = "";
            txtusername.Text = "";
            Response.Redirect("Home.aspx");
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert();", true);
        }

    }



    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int a = cs.insert("insert into userregistration(name,email,phone,address,date,gender,username,password,status)values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtaddress.Text + "','" + txtdate.Text + "','" + DropDownList1.SelectedItem.Text + "','" + txtusername.Text + "','" + txtpassword.Text + "','pending')");
        if (a > 0)
        {
            txtname.Text = "";
            txtemail.Text = "";
            txtaddress.Text = "";
            txtdate.Text = "";
            txtphone.Text = "";
            txtusername.Text = "";
            Response.Redirect("Home.aspx");
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "alert();", true);
        }
    }
}
