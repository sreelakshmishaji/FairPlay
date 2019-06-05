using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Diagnostics;

public partial class Developer_AddApplication : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string path;
    string path1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            DataTable dt = cs.select("select * from mobileos");
            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "mobile";
            DropDownList1.DataValueField = "mid";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, "select");
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DataTable dt = cs.select("select * from mobileos where mid='" + DropDownList1.SelectedValue + "'");
        if(dt.Rows.Count>0)
        {
            txtos.Text = dt.Rows[0]["os"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename;
        string filename1;
        if (FileUpload1.HasFile)
        {
            int dvid =Convert.ToInt32( Session["dvid"].ToString());

            filename = Path.GetFileName(FileUpload1.FileName);
            FileUpload1.SaveAs(Server.MapPath("~/Developer/applogo/") + filename);
            path = "~/Developer/applogo/" + FileUpload1.FileName;
            string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);


            if(FileUpload2.HasFile)
            {

                string strFileName;
                strFileName = FileUpload2.PostedFile.FileName;
                string c = System.IO.Path.GetFileName(strFileName);
                try
                {
                    string filepath = AppDomain.CurrentDomain.BaseDirectory + "Developer\\application\\" + this.FileUpload2.FileName;
                    //this.FileUpload1.SaveAs(path);
                    FileUpload2.PostedFile.SaveAs(filepath);



                    //FileUpload1.PostedFile.SaveAs(("C:\\ServerFolder\\Uploads\\" + c));
                    Process myProcess = new Process();
                    myProcess.StartInfo.FileName = "C:\\Program Files\\Windows Defender\\MpCmdRun.exe";
                    string myprocarg = (filepath + (c + " /REPORT " + filepath));
                    myProcess.StartInfo.Arguments = myprocarg;
                    myProcess.Start();
                    int j;
                    int y = 0;
                    for (j = 0; (j <= 1000000); j++)
                    {
                        y = (y + 1);
                    }
                    string FILENAME = filepath;

                    //  string FILENAME = "c:\\serverfolder\\uploads\\avreport.txt";
                    string SearchLine;
                    bool IsClean = true;
                    string MyFound;
                    StreamReader objStreamReader;
                    objStreamReader = File.OpenText(FILENAME);
                    while ((objStreamReader.Peek() != -1))
                    {
                        SearchLine = objStreamReader.ReadLine();
                        if (!objStreamReader.ReadToEnd().Contains("Found infections   :    0"))
                        {

                            IsClean = false;
                            MyFound = SearchLine;
                        }

                    }

                    objStreamReader.Close();
                    if (IsClean)
                    {
                        //int dvid = Convert.ToInt32(Session["dvid"].ToString());
                        path1 = "~/Developer/application/" + FileUpload2.FileName;
                        DateTime date = DateTime.Today;
                        date.ToString("yyyy-MM-dd");
                        string time = DateTime.Now.ToShortTimeString() ;
                        //string time1 = time.ToString("HH: mm tt");
                        int a = cs.insert("insert into AddApp(dvid,mobile,os,Appname,Appuses,Appdescription,Applogo,app,status,date,time)values('" + dvid + "','" + DropDownList1.SelectedValue + "','" + txtos.Text + "','" + txtappname.Text + "','" + txtAppuses.Text + "','" + txtAppdesc.Text + "','" + path.ToString() + "','" + path1.ToString() + "','Malware','"+date+"','"+time+"')");

                        if(a>0)
                        {
                            DataTable df = cs.select("select * from developerreg where dvid='"+dvid+"' ");
                            if(df.Rows.Count>0)
                            {
                                int counts1 =Convert.ToInt32( df.Rows[0]["count"].ToString());
                                if(counts1==0)
                                {
                                    counts1 = 1;
                                    int h = cs.insert("update developerreg set count='" + counts1 + "' where dvid='"+dvid+"'");

                                }
                                else
                                {
                                    counts1 = counts1 + 1;
                                    int h = cs.insert("update developerreg set count='" + counts1 + "' where dvid='" + dvid + "'");
                                }
                               
                            }


                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "okk();", true);
                        }
                        



                       

                    }
                    else
                    {
                        //int dvid = Convert.ToInt32(Session["dvid"].ToString());
                        path = "~/Developer/application/" + FileUpload2.FileName;
                        string extn3 = Path.GetExtension(FileUpload2.PostedFile.FileName);
                      String  path3 = "~/Developer/applogo/" + FileUpload1.FileName;
                        if (extn3 == ".apk")
                        {
                            int a = cs.insert("insert into AddApp(dvid,mobile,os,Appname,Appuses,Appdescription,Applogo,app,status)values('" + dvid + "','" + DropDownList1.SelectedValue + "','" + txtos.Text + "','" + txtappname.Text + "','" + txtAppuses.Text + "','" + txtAppdesc.Text + "','" + path3.ToString() + "','" + path.ToString() + "','good')");
                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "ok();", true);

                            //Label1.Text = ("Your File Uploaded Sucessfully at server It was checked with an anti-virus");
                        }
                        else
                        {
                            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "App();", true);
                        }
                    }
                }

                catch (Exception Exp)
                {

                    Response.Write(Exp);
                  ///  ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);

                }













                //filename1 = Path.GetFileName(FileUpload2.FileName);
                //FileUpload2.SaveAs(Server.MapPath("~/Developer/application/") + filename1);
                //path1 = "~/Developer/application/" + FileUpload2.FileName;
                //string extn1 = Path.GetExtension(FileUpload2.PostedFile.FileName);
                //if (extn != ".apk" )
                //{
                //    int a = cs.insert("insert into AddApp(dvid,mobile,os,Appname,Appuses,Appdescription,Applogo,app,status)values('"+dvid+"','" + DropDownList1.SelectedValue + "','" + txtos.Text + "','" + txtappname.Text + "','" + txtAppuses.Text + "','" + txtAppdesc.Text + "','" + path.ToString() + "','" + path1.ToString() + "','Malware')");
                //}
                //else
                //{
                //    int a = cs.insert("insert into AddApp(dvid,mobile,os,Appname,Appuses,Appdescription,Applogo,app,status)values('"+dvid+"','" + DropDownList1.SelectedValue + "','" + txtos.Text + "','" + txtappname.Text + "','" + txtAppuses.Text + "','" + txtAppdesc.Text + "','" + path.ToString() + "','" + path1.ToString() + "','good')");
                //    txtAppdesc.Text = "";
                //    txtappname.Text = "";
                //    txtAppuses.Text = "";
                //    txtos.Text = "";
                //    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);
                //}
            }
        }
    }
}