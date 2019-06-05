using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_symmetrickeyrequests : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select distinct s.kid,   u.name, u.email, a.Appname, c.count, s.status from Symmetric s join downloadcount c on s.apid = c.apid and s.uid=c.uid  join userregistration u on s.uid = u.uid  join AddApp a on s.apid = a.apid  ");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="view")
        {
            Random random = new Random();

            int activationcode = Convert.ToInt32(random.Next(1001, 9999));
            int a = cs.insert("update Symmetric set Symmetrickey='" + activationcode + "',status='set' where kid='" + e.CommandArgument + "'");
            Response.Redirect("symmetrickeyrequests.aspx");
        }
    }
}