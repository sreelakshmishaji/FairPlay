using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Admin_viewcomments : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select r.rid,u.name,r.comment,r.uid,d.Appname from Rating r join userregistration u on r.uid=u.uid join AddApp d on r.apid=d.apid where r.status!='fraud'");
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
            DataTable dt = cs.select("select * from userregistration where uid='" + e.CommandArgument + "'");
            if(dt.Rows.Count>0)
            {
                DataList1.DataSource = dt;
                DataList1.DataBind();
               
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
            }
          
          
        }
        if(e.CommandName=="view2")
        {
           
            DataTable dt = cs.select("select r.rid,u.uid, a.Appname,u.name,r.replay from replay r join AddApp a on r.apid=a.apid  join userregistration u on r.uid=u.uid where r.rid='" + e.CommandArgument + "' ");
            if(dt.Rows.Count>0)
            {
                GridView2.DataSource = dt;
                GridView2.DataBind();
                if (GridView2.Visible == true)
                {
                    GridView2.Visible = false;
                }
                else
                {
                    GridView2.Visible = true;
                }
            }
        }
        


    }

  

   
}