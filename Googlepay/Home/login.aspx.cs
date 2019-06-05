using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Home_login : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Label1.Visible = false;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable dt = cs.select("select * from userregistration where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
        if (dt.Rows.Count > 0)
        {
            string status = dt.Rows[0]["status"].ToString();
            if(status== "Approved")
            {
                Session["user"] = dt.Rows[0]["uid"].ToString();
                Response.Redirect("../User/user.aspx");
            }
            else 
            {
                Label1.Text = "Wait for approval";
            }
          
        }
        else
        {
            DataTable df = cs.select("select * from developerreg where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
            if (df.Rows.Count > 0)
            {
                string status = df.Rows[0]["status"].ToString();
                if (status == "Approved")
                {
                    Session["dvid"] = df.Rows[0]["dvid"].ToString();
                    Response.Redirect("../Developer/developerhome.aspx");
                }
                else
                {
                    Label1.Text = "Wait for approval";
                }
            }
            else
            {
                DataTable kk = cs.select("select * from log where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'");
                if (kk.Rows.Count > 0)
                {
                    Response.Redirect("../Admin/Admin.aspx");
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "Invalid user";
                }

            }
        } 
       
       
        
           

        }
    }
