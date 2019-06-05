using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class User_Default : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            if(Session["click"]==null)
            {
                Label1.Text = "notset";
            }
            else{
                Label1.Text = Session["click"].ToString();
            }
           
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["click"] = "farshad";
        Response.Redirect("Default.aspx");

    }
}