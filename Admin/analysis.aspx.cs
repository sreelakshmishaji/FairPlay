using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
public partial class Admin_analysis : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            string apid = Request.QueryString["apid"].ToString();

            DataTable dt = cs.select("select * from Rating r join userregistration u on r.uid=u.uid where r.status!='fraud' and apid= '" + apid + "'");
            if(dt.Rows.Count>0)
            {
                Button1.Visible = true;
                Chart2.Visible = false;
                GridView1.DataSource = dt;
                GridView1.DataBind();

            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        Button1.Visible = false;
        string apid = Request.QueryString["apid"].ToString();
        DataTable dt = cs.select("select * from rating where apid='" + apid + "' and status!='fraud' ");
        for (int i = 0; i < dt.Rows.Count; i++)
        {


            string review = dt.Rows[i]["comment"].ToString();
            string[] tmp = review.Split(' ');
            int ngcount = review.Count();
            int ccv = 0;
            int negcunt = 0;
            int poscount = 0;
            int posv = 0;
            DataTable ng = cs.select("select * from negativedataset");
            if (ng.Rows.Count > 0)
            {
                int h = tmp.Length;
                for (int j = 0; j < tmp.Length; j++)
                {
                    int flag = 0;

                    string cc = tmp[j].ToLower();
                    string negwrd = "";
                    for (int f = 0; f < cc.Length; f++)
                    {
                        if (cc[f] >= 'a' && cc[f] <= 'z')
                        {
                            negwrd += cc[f];
                        }
                    }


                    for (int n = 0; n < ng.Rows.Count; n++)
                    {
                        string neg = ng.Rows[n]["negativewords"].ToString().ToLower();



                        if (neg == negwrd)
                        {
                            negcunt = negcunt + 1;

                        }
                        ccv = negcunt;
                        //Label1.Text = ccv.ToString();


                    }




                }

            }
            DataTable vb = cs.select("select * from positivewords");
            //int h = tmp.Length;
            for (int j = 0; j < tmp.Length; j++)
            {


                string cc = tmp[j].ToLower();
                string postwrd = "";
                for (int f = 0; f < cc.Length; f++)
                {
                    if (cc[f] >= 'a' && cc[f] <= 'z')
                    {
                        postwrd += cc[f];
                    }
                }


                for (int n = 0; n < vb.Rows.Count; n++)
                {
                    string pos = vb.Rows[n]["positivewords"].ToString().ToLower();



                    if (pos == postwrd)
                    {
                        poscount = poscount + 1;

                    }
                    posv = poscount;
                    //Label1.Text = posv.ToString();


                }




            }

            if (ccv > posv)
            {
                //Label1.Text = "negative";

                int rid = Convert.ToInt32(dt.Rows[i]["rid"]);
                int a = cs.insert("update  rating set status='negative' where rid='" + rid + "' ");
            }
            else if (ccv < posv)
            {
                //Label1.Text = "positive";
                int rid = Convert.ToInt32(dt.Rows[i]["rid"]);
                int a = cs.insert("update  rating set status='positive' where rid='" + rid + "' ");
            }
            else
            {
                //Label1.Text = "neutral";
                int rid = Convert.ToInt32(dt.Rows[i]["rid"]);
                int a = cs.insert("update  rating set status='neutral' where rid='" + rid + "' ");
            }


        }
        DataTable fd = cs.select("select distinct status, count(status) as negative from rating where apid='" + apid + "' and status='negative' group by status union select distinct status, count(status) as positive from rating where apid='" + apid + "' and status = 'positive' group by status union select distinct status, count(status) as neutral from rating where apid='" + apid + "' and status = 'neutral' group by status");

        Chart2.DataSource = fd;
        Chart2.Series[0].ChartType = SeriesChartType.RangeColumn;

        //Chart2.Legends[0].Enabled = true;
        Chart2.Series[0].XValueMember = "status";
        Chart2.Series[0].YValueMembers = "negative";
        Chart2.DataBind();
      


    }
}