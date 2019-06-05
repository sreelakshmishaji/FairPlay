using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class User_Default2 : System.Web.UI.Page
{
    Class1 cs = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataList2.Visible = false;
            Panel1.Visible = false;
            DataList1.DataSource = cs.select("select r.rid,r.uid,u.photo,u.name,r.comment,ISNULL(AVG(r.rating),0)AverageRating from Rating r join userregistration u on r.uid=u.uid where r.apid='1' and r.status!='fraud'  group by r.uid,u.photo,u.name,r.comment, r.rid  ");
            DataList1.DataBind();


            DataTable dm = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid ");
            if(dm.Rows.Count>0)
            {
               
                foreach (DataListItem item in DataList1.Items)
                {
                    Label lbl = item.FindControl("Label1") as Label; 
                    lbl.Text = dm.Rows.Count.ToString();
                   
                }
            }
        }

    }


    protected void LinkButton6_Click(object sender, EventArgs e)
    {
      if(  Panel1.Visible == false)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        int a = cs.insert("insert into replay(rid,uid,apid,replay)values('4','1','1','" + TextBox1.Text + "')");
        TextBox1.Text = "";
        Panel1.Visible = false;
        if(a>0)
        {
            DataTable dt = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid ");
            DataList2.Visible = true;
            DataList2.DataSource = dt;
            DataList2.DataBind();
        }
    }



    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        if (DataList2.Visible == false)
        {
            DataList2.Visible = true;
        }
        else
        {
            DataList2.Visible = false;
        }
        DataTable dt = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid ");
        DataList2.Visible = true;
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        if (DataList2.Visible == false)
        {
            DataList2.Visible = true;
        }
        else
        {
            DataList2.Visible = false;
        }
        DataTable dt = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid ");
      //  DataList2.Visible = true;
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }
}