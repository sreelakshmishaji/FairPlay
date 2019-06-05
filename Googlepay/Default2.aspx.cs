using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Diagnostics;
using System.IO;

public partial class Default2 : System.Web.UI.Page
{
    Class1 cs = new Class1();
    string path;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        

            string filename;
            if (FileUpload1.HasFile)
            {

                string strFileName;
                strFileName = FileUpload1.PostedFile.FileName;
                string c = System.IO.Path.GetFileName(strFileName);
                try
                {
                    string filepath = AppDomain.CurrentDomain.BaseDirectory + "Developer\\fakeapp\\" + this.FileUpload1.FileName;
                    //this.FileUpload1.SaveAs(path);
                    FileUpload1.PostedFile.SaveAs(filepath);

                  

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
                    path = "~/Developer/fakeapp/" + FileUpload1.FileName;
                    int rt = cs.insert("insert into appps(app)values('" + path+ "')");




                    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "okk();", true);

                }
                else
                {
                    //int dvid = Convert.ToInt32(Session["dvid"].ToString());
                    path = "~/Developer/fakeapp/" + FileUpload1.FileName;
                    string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);

                    if (extn == ".apk")
                    {
                        int rt = cs.insert("insert into appps(app)values('" + path + "')");
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
                ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "success();", true);

            }







            //StreamReader r = new StreamReader(FileUpload1.FileContent);
            //txtarea.Text = r.ReadToEnd();
            //int dvid = Convert.ToInt32(Session["dvid"].ToString());
            //filename = Path.GetFileName(FileUpload1.FileName);
            //FileUpload1.SaveAs(Server.MapPath("~/Developer/Booklet/") + filename);
            //path = "~/Developer/Booklet/" + FileUpload1.FileName;
            //string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);


            //    int a = cs.insert("insert into mobilebooklet(mobile,os,booklet,dvid,status)values('" + DropDownList1.SelectedValue + "','" + txtos.Text + "','" + path.ToString() + "','" + dvid + "','not')");
            //    ScriptManager.RegisterStartupScript(this, GetType(), "Popup", "successalert();", true);

        }
    }
}