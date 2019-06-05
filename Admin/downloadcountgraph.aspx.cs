using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
public partial class Admin_downloadcountgraph : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable fd = cs.select("select distinct a.Appname,   sum(count) as download        from downloadcount d join AddApp a on d.apid=a.apid where d.status !='fraud' group by a.Appname");

            Chart2.DataSource = fd;
            Chart2.Series[0].ChartType = SeriesChartType.RangeColumn;

            //Chart2.Legends[0].Enabled = true;
            Chart2.Series[0].XValueMember = "Appname";
            Chart2.Series[0].YValueMembers = "download";
            Chart2.DataBind();
        }
    }
}