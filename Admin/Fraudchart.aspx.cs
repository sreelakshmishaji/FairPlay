using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;

public partial class Admin_Fraudchart : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select 'download', count(distinct(uid)) as download from downloadcount where status='fraud' union select 'rating', count(distinct(uid)) as rating from Rating where status='fraud'  union select 'recommend'  , count(distinct(uid)) as recommend  from Recommend where status='fraud'");


            //   DataTable dt = db.selectquery("select  (c.name) as name,v.candid,count(v.candid)as count from voting v join candidates c on v.candid = c.cid GROUP BY  v.candid, c.name order by count asc");
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i][0].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i][1]);
            }
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = SeriesChartType.Pie;
            Chart1.Series[0]["PieLabelStyle"] = "Disabled";
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        }
    }
}