using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class User_Profile : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string uid = Request.QueryString["id"].ToString();
            DataTable dt = cs.select("select * from userregistration where uid='" + uid + "'");
            DataList1.DataSource = dt;
            DataList1.DataBind();
        }
    }
}