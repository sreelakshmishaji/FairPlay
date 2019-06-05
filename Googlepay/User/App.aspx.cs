using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;

public partial class User_App : System.Web.UI.Page
{
    int apid;
    Class1 cs = new Class1();
    string IPAddress;
    DateTime date;
    string time;
    string IPAddress1;
    DateTime date1;
    string time1;
    string ipp;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataList3.Visible = false;
            LinkButton3.Visible = true;
            Label8.Visible = false;
            Panel1.Visible = false;
            Panel2.Visible = false;
            Label9.Visible = false;
            DataList1.Visible = false;
            int uid = Convert.ToInt32(Session["user"].ToString());
            
            if(Request.QueryString.Count>0)
            {
                var c = Request.QueryString["id"].ToString();
                apid = Convert.ToInt32(c);
                //string apid = Request.QueryString["id"].ToString();
            }
            DataTable cv = cs.select("select * from Recommend where apid='" + apid + "' and uid='" + uid + "' ");
            if(cv.Rows.Count>0)
            {
                string count2= cv.Rows[0]["count"].ToString();
                if (count2 == "3")
                {
                    LinkButton3.Visible = false;
                }
            }


            DataTable dt = cs.select("select a.Appname ,(select ISNULL( sum(count),0) as download from downloadcount where status!='fraud' and apid=" + apid + " )as download,a.Applogo,a.os,a.Appuses,a.Appdescription,ISNULL(AVG(r.rating),0)AverageRating from AddApp a left join     downloadcount d on a.apid=d.apid    left   join      Rating r on a.apid=r.apid    where d.status !='fraud' and  a.apid='" + apid+"'     group by a.apid,d.status, a.Appname,a.Applogo,a.os,a.Appuses,a.Appdescription  ");
            if (dt.Rows.Count>0)
            {
                DataList2.DataSource = dt;
                DataList2.DataBind();
            }
            else
            {
                DataTable cc = cs.select("select a.Appname ,(select ISNULL( sum(count),0) as download from downloadcount where status!='fraud' and apid=" + apid + " )as download,a.Applogo,a.os,a.Appuses,a.Appdescription,ISNULL(AVG(r.rating),0)AverageRating from AddApp a left join     downloadcount d on a.apid=d.apid    left   join      Rating r on a.apid=r.apid    where   a.apid='" + apid + "'     group by a.apid,d.status, a.Appname,a.Applogo,a.os,a.Appuses,a.Appdescription  ");
                if(cc.Rows.Count>0)
                {
                    DataList2.DataSource = cc;
                    DataList2.DataBind();
                }
            }
           
        }
    }
  





    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        DataList1.Visible = false;
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable bn = cs.select("select * from Rating where apid='" + apid + "' and uid='" + uid + "'");
        if(bn.Rows.Count>0)
        {
            string rows;
            rows = bn.Rows.Count.ToString();
            if(rows=="3")
            {
                IPAddress = GetIPAddress();
                int g = cs.insert("update Rating set status='fraud',time='" + time + "',date='" + date + "',ip='" + IPAddress + "' where apid='" + apid + "' and uid='" + uid + "'");

               
                Label9.Visible = true;
                Label9.Text = "You are temporary blocked  ";
                //LinkButton2.Visible = false;
            }
            else
            {
               
                Panel1.Visible = true;
            }
        }
        else
        {
            //comment();
            Panel1.Visible = true;
        }
       
    }

    private string GetIPAddress()
    {
        IPHostEntry Host = default(IPHostEntry);
        string Hostname = null;
        Hostname = System.Environment.MachineName;
        Host = Dns.GetHostEntry(Hostname);
        foreach (IPAddress IP in Host.AddressList)
        {
            if (IP.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
            {
                IPAddress = Convert.ToString(IP);
                date = DateTime.Today;
                date.ToString("yyyy-MM-dd");
                time = DateTime.Now.ToShortTimeString();

            }
        }
        return IPAddress;
    }

    private string GetIPAddress1()
    {
        IPHostEntry Host = default(IPHostEntry);
        string Hostname = null;
        Hostname = System.Environment.MachineName;
        Host = Dns.GetHostEntry(Hostname);
        foreach (IPAddress IP in Host.AddressList)
        {
            if (IP.AddressFamily == System.Net.Sockets.AddressFamily.InterNetwork)
            {
                IPAddress1 = Convert.ToString(IP);
                 ipp = IPAddress1.ToString();
                date1 = DateTime.Today;
                date1.ToString("yyyy-MM-dd");
                time1 = DateTime.Now.ToShortTimeString();

            }
        }
        return IPAddress;
    }

    private void comment()
    {
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from Rating where apid='" + apid + "' and uid='" + uid + "' ");
        if(dt.Rows.Count>0)
        {
            int count = 0;
            int value = Convert.ToInt32(dt.Rows[0]["count"].ToString());
            count = value + 1;
            int a = cs.insert("insert into Rating(rating,uid,apid,comment,count,status)values('" + Session["v"] + "','" + uid + "','" + apid + "','" + TextBox1.Text + "','"+count+ "','not')");


        }
        else
        {
            int a = cs.insert("insert into Rating(rating,uid,apid,comment,count,status)values('" + Session["v"] + "','" + uid + "','" + apid + "','" + TextBox1.Text + "','1','not')");
        }



    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        comment();
        //int a = cs.insert("insert into Rating(rating,uid,apid,comment)values('" + Session["v"] + "','" + uid + "','" + apid + "','" + TextBox1.Text + "')");
       
            Panel1.Visible = false;
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
       
        
    }

    protected void Rating2_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        Session["v"] = e.Value;
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from Recommend where apid='" + apid + "' and uid='" + uid + "' ");
        if (dt.Rows.Count > 0)
        {
            string count1 = dt.Rows[0]["count"].ToString();
            if (count1 == "3")
            {
                 IPAddress1 = GetIPAddress1();
                int a = cs.insert("update Recommend set status='fraud',time='" + time1 + "',date='" + date1 + "',ip='" + ipp + "' where apid='" + apid + "' and uid='" + uid + "'  ");
                Label8.Visible = true;
                Label8.Text = "You are temporary blocked from Recommending";
                LinkButton3.Visible = false;

            }
            else
            {
                recommend();
            }
        }
        else
        {

            recommend();
        }
    }

    private void recommend()
    {
        string apid = Request.QueryString["id"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
       
        DataTable dt = cs.select("select * from Recommend where apid='" + apid + "' and uid='" + uid + "' ");
        if(dt.Rows.Count>0)
        {

            int count = 0;
            int value = Convert.ToInt32(dt.Rows[0]["count"].ToString());
            count = value + 1;
           
            int a = cs.insert("update Recommend set count='" + count + "' where apid='" + apid + "' and uid='" + uid + "'  ");
        }
        else
        {
            int a = cs.insert("insert into Recommend(uid,apid,count,status) values('" + uid + "','" + apid + "','1','not')");
        }
    }

  

    protected void LinkButton4_Click1(object sender, EventArgs e)
    {
        Label8.Visible = false;
        Panel1.Visible = false;
        Label9.Visible = false;
       
     if(DataList1.Visible==false)
        {
            DataList1.Visible = true;
        }
     else
        {
            DataList1.Visible = false;
        }

        string apid = Request.QueryString["id"].ToString();
        Panel2.Visible = false;
        //DataList1.DataSource = cs.select("select r.rid,r.uid,u.photo,u.name,r.comment,ISNULL(AVG(r.rating),0)AverageRating from Rating r join userregistration u on r.uid=u.uid where r.apid='"+apid+"' and r.status!='fraud'  group by r.uid,u.photo,u.name,r.comment, r.rid  ");

        DataList1.DataSource = cs.select("select r.rid,r.uid,u.photo,u.name,r.comment,ISNULL(AVG(r.rating),0)AverageRating, count(Distinct(g.rpid))as dg from Rating r  join userregistration u on r.uid=u.uid left join replay g on r.rid=g.rid  where r.apid='"+apid+"' and r.status!='fraud'   group by r.uid,u.photo,u.name,r.comment, r.rid,g.rpid  ");
        DataList1.DataBind();
        DataTable dm = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid ");
        //if (dm.Rows.Count > 0)
        //{

        //    foreach (DataListItem item in DataList1.Items)
        //    {
        //        Label lbl = item.FindControl("Label1") as Label;
        //        lbl.Text = dm.Rows.Count.ToString();

        //    }
        //}
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if(e.CommandName=="data")
        {
            string uid = e.CommandArgument.ToString();
            Response.Redirect("Profile.aspx?id=" + uid + "");
        }
    }

    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        if (Panel2.Visible == false)
        {
            Panel2.Visible = true;
        }
        else
        {
            Panel2.Visible = false;
        }
    }

    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        int uid = Convert.ToInt32(Session["user"].ToString());
        string apid = Request.QueryString["id"].ToString();
        int a = cs.insert("insert into replay(rid,uid,apid,replay)values('" + Session["rid"] + "','" + uid + "','" + apid + "','" + TextBox4.Text + "')");
        TextBox4.Text = "";

    }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName== "rate")
        {
            Session["rid"] = e.CommandArgument.ToString();
        }
        else if (e.CommandName == "view")
        {
            string apid = Request.QueryString["id"].ToString();
            if (DataList3.Visible == false)
            {
                DataList3.Visible = true;
            }
            else
            {
                DataList3.Visible = false;
            }
            DataTable dt = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid where r.apid='"+apid+"' and r.rid='"+e.CommandArgument+"' ");
            //  DataList2.Visible = true;
            DataList3.DataSource = dt;
            DataList3.DataBind();
        }
    }

    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        
    }

    //protected void LinkButton2_Click1(object sender, EventArgs e)
    //{
    //    if (DataList3.Visible == false)
    //    {
    //        DataList3.Visible = true;
    //    }
    //    else
    //    {
    //        DataList3.Visible = false;
    //    }
    //    DataTable dt = cs.select("select u.name,u.photo,r.replay from replay r join userregistration u on r.uid=u.uid ");
        
    //    DataList3.DataSource = dt;
    //    DataList3.DataBind();
    //}
}