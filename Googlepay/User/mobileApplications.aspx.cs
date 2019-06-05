using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Net;

public partial class User_mobileApplications : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string IPAddress;
    DateTime date;
    string time;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            if (Session["id"] ==null)
            {
                if (Session["below"] != null)
                {
                    int uid1 = Convert.ToInt32(Session["user"].ToString());
                    DataTable xy = cs.select("select * from AddApp a join downloadcount d on a.apid!=d.apid where d.uid='" + uid1 + "' and a.status!='Malware' ");
                    if (xy.Rows.Count > 0)
                    {
                        DataList1.DataSource = xy;
                        DataList1.DataBind();
                    }
                    else
                    {

                    

                    DataTable aw = cs.select("select * from AddApp where status!='Malware' ");
                    DataList1.DataSource = aw;
                    DataList1.DataBind();
                }
                }


                int uid = Convert.ToInt32(Session["user"].ToString());
                DataTable dt = cs.select("select * from AddApp a join downloadcount d on a.apid!=d.apid where d.uid='"+uid+ "'  and a.status!='Malware' ");
                if (dt.Rows.Count > 0)
                {
                    DataTable ll = cs.select("SELECT TOP 1 * FROM downloadcount ORDER BY dwid DESC");
                    if (ll.Rows.Count > 0)
                    {
                        string ccount = ll.Rows[0]["count"].ToString();
                        if (ccount == "1" || ccount == "2")
                        {
                            DataTable lq = cs.select("select * from AddApp where status!='Malware'");
                            DataList1.DataSource = lq;
                            DataList1.DataBind();
                        }
                        else
                        {
                            DataTable uu = cs.select("select * from AddApp a  where a.apid not in (select d.apid from downloadcount d where d.status = 'fraud' and d.uid = '"+uid+"')and a.status != 'Malware' ");

                            DataList1.DataSource = uu;
                            DataList1.DataBind();
                        }
                        //DataList1.DataSource = dt;
                        //DataList1.DataBind();
                    }
                    else
                    {
                        DataTable rr = cs.select("select * from AddApp where status!='Malware'");

                        DataList1.DataSource = rr;
                        DataList1.DataBind();
                    }
                }
                else
                {
                    DataTable hj = cs.select("select * from AddApp a  where a.apid not in (select d.apid from downloadcount d where d.status = 'fraud' and d.uid = '" + uid + "')and a.status != 'Malware'  ");
                    DataList1.DataSource = hj;
                    DataList1.DataBind();
                }
            }
            else
            {
                int uid1 = Convert.ToInt32(Session["user"].ToString());
                DataTable xy = cs.select("select * from AddApp a join downloadcount d on a.apid!=d.apid where d.uid='" + uid1 + "'  and a.status!='Malware' ");
                if (xy.Rows.Count > 0)
                {
                    DataList1.DataSource = xy;
                    DataList1.DataBind();
                }
                else
                {



                    DataTable aw = cs.select("select * from AddApp where status!='Malware'  ");
                    DataList1.DataSource = aw;
                    DataList1.DataBind();
                }

                int apid =Convert.ToInt32( Session["id"].ToString());
                Session["start"] = apid;
           
            panel1.Visible = false;
            int uid = Convert.ToInt32(Session["user"].ToString());
            DataTable sd = cs.select("select * from downloadcount where  uid='" + uid + "' and apid='"+ Session["start"]+"' ");
            if(sd.Rows.Count>0)
            {
               
                string count1 = sd.Rows[0]["count"].ToString();
                    if(count1=="1"||count1=="2")
                    {
                        Session["below"] = count1;
                    }
                if(count1=="3"||count1=="4")
                {
                        Session["below"] = null;
                    panel1.Visible = true;
                    DataTable dt = cs.select("select * from AddApp a  where a.apid not in (select d.apid from downloadcount d where d.status = 'fraud' and d.uid = '" + uid + "')and a.status != 'Malware'");

                    DataList1.DataSource = dt;
                    DataList1.DataBind();


                    foreach (DataListItem item in DataList1.Items)
                    {
                       

                        LinkButton gh = item.FindControl("LinkButton2") as LinkButton;
                        gh.Visible = false;


                    }

                }
            }
                else
                {
                    DataTable dt = cs.select("select * from AddApp where status!='Malware'");

                    DataList1.DataSource = dt;
                    DataList1.DataBind();



                }

            }

        }
        }

    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        if(e.CommandName=="view")
        {
            int apid =Convert.ToInt32( e.CommandArgument);
            Response.Redirect("App.aspx?id=" + apid + "");
        }
       
    }
    protected void DownloadFile(object sender, EventArgs e)
    {


        LinkButton lnk = sender as LinkButton;
        String Value1 = lnk.Attributes["CustomParameter"].ToString();
        string apid = Value1;
        Session["key1"] = apid;
        updatedownload();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from downloadcount where apid='" + apid + "' and uid='" + uid + "' ");
        string count1 = dt.Rows[0]["count"].ToString();
        if (count1 == "3" )
        {
           

            panel1.Visible = true;
            LinkButton4.Visible = true;
            lnk.Visible = false;
            
      
        

        }
        else if(count1 == "5")
        {
            foreach (DataListItem item in DataList1.Items)
            {
                
                panel1.Visible = true;
                LinkButton gh = item.FindControl("LinkButton2") as LinkButton;
                gh.Visible = false;
                LinkButton3.Visible = false;
                txtkey.Visible = false;
                Button1.Visible = false;
                Label1.Visible = true;
                LinkButton4.Visible = false;
                Label1.Text = "You are temporary blocked from downloading";
                string IPAddress = GetIPAddress();



                int a = cs.insert("update downloadcount set status='fraud',time='"+time+"',date='"+date+"',ip='"+IPAddress+"' where uid='"+uid+"' and apid='" + Session["id"]+"' ");
                Session["id"] = null;
            }
        }
        else
        {
            panel1.Visible = false;
            string filePath = (sender as LinkButton).CommandArgument;
            Response.ContentType = ContentType;
            //string s = Path.GetFileName(filePath);
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(filePath));
            Response.WriteFile(filePath);
            Response.End();
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

    private void updatedownload()
    {

        string apid = Session["key1"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from downloadcount where apid='" + apid + "' and uid='" + uid + "'  ");
        if (dt.Rows.Count > 0)
        {
            int count = 0;
            int value = Convert.ToInt32(dt.Rows[0]["count"].ToString());
            count = value + 1;
            
                int a = cs.insert("update downloadcount set count='" + count + "' where apid='" + apid + "' and uid='" + uid + "' ");
           
        }
        else
        {
            int a = cs.insert("insert into downloadcount(uid,apid,count,status) values('" + uid + "','" + apid + "','1','notset')");
        }
    }

    protected void LinkButton3_Click(object sender, EventArgs e)
    {

        string apid = Session["key1"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        int a = cs.insert("insert into Symmetric(uid,apid,Symmetrickey,status)values('" + uid + "','" + apid + "','pending','pending')");
        Label1.Text = "Wait for Generating Symmetric Key";
        Session["id"] = apid;
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        string apid = Session["key1"].ToString();
        int uid = Convert.ToInt32(Session["user"].ToString());
        DataTable dt = cs.select("select * from Symmetric where uid='" + uid + "' and apid='" + apid + "'");
        Label1.Text = "the key is " + dt.Rows[0]["Symmetrickey"].ToString();
        Session["key"] = dt.Rows[0]["Symmetrickey"].ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["key"].ToString() == txtkey.Text.ToString())
        {
            foreach (DataListItem item in DataList1.Items)
            {
                

                LinkButton gh = item.FindControl("LinkButton2") as LinkButton;
                gh.Visible = true;
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);

            }
        }
    }
}