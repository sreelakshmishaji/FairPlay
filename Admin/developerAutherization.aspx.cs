using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_developerAutherization : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = cs.select("select * from developerreg");
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "view")
        {
            int a = cs.insert("update developerreg set status='Approved' where dvid='" + e.CommandArgument + "' ");
            Response.Redirect("developerAutherization.aspx");
        }
    }
}