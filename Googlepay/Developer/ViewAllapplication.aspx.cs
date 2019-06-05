using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class Developer_ViewAllapplication : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataList2.Visible = false;
            //int dvid = Convert.ToInt32(Session["dvid"].ToString());
            //DataTable dt = cs.select("select * from AddApp where dvid='" + dvid + "'");
            DataTable dt = cs.select("select * from AddApp where status!='Malware'");

            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="view")
        {
            DataList2.Visible = true;
            DataTable df = cs.select("select * from AddApp where apid='" + e.CommandArgument + "'");
            DataList2.DataSource = df;
            DataList2.DataBind();
        }
    }
}