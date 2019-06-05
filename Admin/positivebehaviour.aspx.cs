using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_positivebehaviour : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select * from AddApp a join developerreg d on a.dvid=d.dvid where a.status!='Malware' ");
            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
     {
        if(e.CommandName== "view1")
        {
            DataTable dt = cs.select("select * from Rating r join userregistration u on r.uid=u.uid where r.status!='fraud' and apid= '" + e.CommandArgument + "'");
            if(dt.Rows.Count>0)
            {
                Response.Redirect("analysis.aspx?apid=" + e.CommandArgument);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "okk();", true);
            }

            
        }
    }
}