using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class popup : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
           
        }
    }

    protected void btnModalPopup_Click(object sender, EventArgs e)
    {
        DataTable dt = cs.select("select * from developerreg where dvid='1'");
        DataList1.DataSource = dt;
        DataList1.DataBind();
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);
    }
}