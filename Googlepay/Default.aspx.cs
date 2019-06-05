using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string path;
    int mm;
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void Button3_Click(object sender, EventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ok();", true);
    }
}