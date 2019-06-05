using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class antivrs : System.Web.UI.Page
{
    string path;
    int mm;

    public object MyFile { get; private set; }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //*********************************************************************************************************
    //**********************@@@@@@@@@@ REGFERENCE ###########################**********************************

    //https://forums.asp.net/t/890935.aspx?File+Upload+Virus+Scaning+server+side+
        //https://www.carlosag.net/tools/codetranslator/   //CONVERTER VB TO C#
        //https://social.msdn.microsoft.com/Forums/en-US/f48f604a-1d64-45f7-9475-14fa08f51d91/aspnet-does-antivirus-scan-required-while-uploading-file-from-any-pc-to-sql-database-as-datatype?forum=csharplanguage

        //https://www.c-sharpcorner.com/forums/c-sharp-code-for-virus-scan-while-file-upload


        //##################################################################################################
        //####################################################################################################


    protected void Button1_Click(object sender, EventArgs e)
    {
        scanfile();

    //    string strFileName;

        //    //strFileName = MyFile.PostedFile.FileName;
        //    strFileName = FileUpload1.FileName;
        //    string c = System.IO.Path.GetFileName(strFileName);
        //    //  only the attched file name not its path
        //    //  Let us Save uploaded file to server at C:\ServerFolder\Uploads
        //    try
        //    {
        //        FileUpload1.PostedFile.SaveAs(("~//uploadphoto//" + c));
        //        // do av check here
        //        // ############################
        //        Process myProcess = new Process();
        //        myProcess.StartInfo.FileName = "c:\\mav\\scan.exe";
        //        string myprocarg = ("c:\\serverfolder\\uploads\\"
        //                    + (c + " /REPORT c:\\serverfolder\\uploads\\avreport.txt"));
        //        myProcess.StartInfo.Arguments = myprocarg;
        //        myProcess.Start();
        //        myProcess.WaitForExit();
        //        // wait for the scan to complete
        //        // add some time for report to be written to file
        //        int j;
        //        int y = 0;
        //        for (j = 0; (j <= 1000000); j++)
        //        {
        //            y = (y + 1);
        //        }

        //        // Open a file for reading
        //        string FILENAME = "c:\\serverfolder\\uploads\\avreport.txt";
        //        string SearchLine;
        //        bool IsClean = true;
        //        string MyFound;
        //        // Get a StreamReader class that can be used to read the file
        //        StreamReader objStreamReader;
        //        objStreamReader = File.OpenText(FILENAME);
        //        while ((objStreamReader.Peek() != -1))
        //        {
        //            SearchLine = objStreamReader.ReadLine();
        //            // ... do whatever else you need to do ...
        //            if ((SearchLine.IndexOf("Found") + 1))
        //            {
        //                IsClean = false;
        //                MyFound = SearchLine;
        //            }

        //        }

        //        objStreamReader.Close();
        //        if (IsClean)
        //        {
        //            Span1.InnerHtml = ("Your File Uploaded Sucessfully at server as : C:\\ServerFolder\\Uploads\\"
        //                        + (c + "<br> It was checked with an anti-virus"));
        //        }
        //        else
        //        {
        //            Span1.InnerHtml = (MyFound + " - It has been deleted from the server");
        //        }

        //    }
        //    catch (Exception Exp)
        //    {
        //        Span1.InnerHtml = "An Error occured. Please check the attached file";
        //        Span2.Visible = false;
        //    }

        //}
    }
    public void scanfile()
    {
        string c;
        bool IsValid = true;
        //foreach (FileInfo file in fileuploadExcel.Unload)
        //{
        try
        {
            //do av check here
            Process myProcess = new Process();
            FileUpload1.SaveAs(Server.MapPath("~\\uploadphoto\\") + FileUpload1.FileName);
            //address of command line virus scan exe
         //   myProcess.StartInfo.FileName = Server.MapPath("C:\\Program Files\\AVG\\AVG10\\");
            myProcess.StartInfo.FileName = "avg_free_x86_all_2013_2805a5946.exe";

            //Process myProcess = new Process();
            //FileUpload1.SaveAs(Server.MapPath("~\\VirusScan\\temp\\") + FileUpload1.FileName);
            ////address of command line virus scan exe
            //myProcess.StartInfo.FileName = Server.MapPath("~\\VirusScan\\AVG2012\\avgscanx.exe");
            ////"C:\\Program Files\\AVG\\AVG2012\\avgscanx.exe";


            string path = '"' + "" + Server.MapPath("~\\uploadphoto\\") + "" + FileUpload1.FileName + "" + '"';
            string report = '"' + "" + Server.MapPath("~\\uploadphoto\\") + "" + '"';
            //  string myprocarg = "/SCAN=" + path + " /REPORT=" + report;

            string myprocarg = Server.MapPath("~\\uploadphoto\\") + "" + myProcess.StartInfo.FileName + "" + '"';


            myProcess.StartInfo.Arguments = myprocarg;
            myProcess.StartInfo.UseShellExecute = false;
            myProcess.StartInfo.RedirectStandardOutput = true;

            myProcess.Start();
            myProcess.WaitForExit();
            //wait for the scan to complete                
            //add some time for report to be written to file
            int j = 0;
            int y = 0;
            for (j = 0; j <= 1000000; j++)
            {
                y = y + 1;
            }
            //Get a StreamReader class that can be used to read the file
            StreamReader objStreamReader = default(StreamReader);
            objStreamReader = File.OpenText(Server.MapPath("~\\VirusScan\\Report.txt"));
            String reportVerbose = objStreamReader.ReadToEnd().Trim();
            if (reportVerbose.Length > 0 && !reportVerbose.Contains("Found infections    :    0"))
            {
                IsValid = false;
                File.Delete(Server.MapPath("~\\VirusScan\\temp\\") + "" + FileUpload1.FileName);
            }
            objStreamReader.Close();
            if (IsValid)
            {
                try
                {
                    if (!Directory.Exists(Server.MapPath("~/DataFiles/")))
                        Directory.CreateDirectory(Server.MapPath("~/DataFiles/"));
                    if (!File.Exists(Server.MapPath("~/DataFiles/" + System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName))))
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/DataFiles/") + FileUpload1.FileName);
                    }
                    else
                    {
                        try
                        {
                            File.Delete(Server.MapPath("~/DataFiles/" + System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)));
                            FileUpload1.SaveAs(Server.MapPath("~/DataFiles/") + FileUpload1.FileName);
                        }
                        catch (System.IO.IOException)
                        {

                        }
                    }
                }
                catch (System.IO.IOException)
                {

                }

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }















        //foreach (FileUpload file in FileUpload1.UploadedFiles)
        //{
        //    try
        //    {
        //        //do av check here
        //        Process myProcess = new Process();

        //        //address of command line virus scan exe
        //        myProcess.StartInfo.FileName = "C:\\Program Files\\AVG\\AVG10\\avgscana.exe";
        //        string myprocarg = "/SCAN=" + e.UploadedFile.TempFileName + " /REPORT=C:\\Upload\\Temp\\Report.txt";
        //        myProcess.StartInfo.Arguments = myprocarg;
        //        myProcess.Start();
        //        myProcess.WaitForExit(); //wait for the scan to complete                

        //        //add some time for report to be written to file
        //        int j = 0;
        //        int y = 0;
        //        for (j = 0; j <= 1000000; j++)
        //        {
        //            y = y + 1;
        //        }

        //        //Get a StreamReader class that can be used to read the file
        //        StreamReader objStreamReader = default(StreamReader);
        //        objStreamReader = File.OpenText("C:\\Upload\\Temp\\Report.txt");
        //        if (!objStreamReader.ReadToEnd().Contains("Found infections    :    0"))
        //        {
        //            e.IsValid = false;
        //            File.Delete(e.UploadedFile.TempFileName);
        //        }
        //        objStreamReader.Close();

        //        if (e.IsValid)
        //        {
        //            Label1.Text = "Your File Uploaded Sucessfully at server as: " + e.UploadedFile.FileName + "<br />It was checked with AVG Free Anti-Virus.";
        //        }
        //        else
        //        {
        //            Label1.Text = "Error! " + e.UploadedFile.FileName + " contains a virus. It has been deleted from the server.";
        //        }
        //    }
        //    catch (Exception Exp)
        //    {
        //        Label1.Text = "An Error occured & all files have been removed. Please check the attached file(s).";
        //        e.IsValid = false;
        //        File.Delete(e.UploadedFile.TempFileName);
        //    }
        //}
        // }


    }


    
    protected void Button2_Click(object sender, EventArgs e)
    {

        try
        {
            FileUpload1.SaveAs(Server.MapPath("~\\uploadphoto\\") + FileUpload1.FileName);
            string filePath = AppDomain.CurrentDomain.BaseDirectory + "uploadphoto\\" + this.FileUpload1.FileName;
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = "C:\\Program Files\\Windows Defender\\MpCmdRun.exe";
            startInfo.Arguments = "-Scan -ScanType 3 -File " + filePath;
            process.StartInfo = startInfo;
            var result = process.Start();
            Console.WriteLine("Scanned with result: " + result.ToString());
            int j = 0;
            int y = 0;
            for (j = 0; j <= 1000000; j++)
            {
                y = y + 1;
            }

            path = AppDomain.CurrentDomain.BaseDirectory + "uploadphoto\\" + this.FileUpload1.FileName;
            if (File.Exists(path))
            {
                StreamReader objStreamReader = new StreamReader(path, UnicodeEncoding.GetEncoding("UTF-8"));

                //Get a StreamReader class that can be used to read the file
                //StreamReader objStreamReader = default(StreamReader);
                //objStreamReader = File.OpenText(Server.MapPath("D:\\Academic project\\IEEE\\MALWARE\\MalwareDTN -7-6-2018\\MalwareDetection\\Report.txt"));
                String reportVerbose = objStreamReader.ReadToEnd().Trim();
                if (!objStreamReader.ReadToEnd().Contains("Found infections    :    0"))
                {
                   mm = 0;

                }
                objStreamReader.Close();
                if (mm==0)
                {
                    Label1.Text = "Your File Uploaded Sucessfully at server as: " + filePath + "<br />It was checked with AVG Free Anti-Virus.";
                }
                else
                {
                    Label1.Text = "Error!"+ " contains a virus. It has been deleted from the server.";
                }

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex);
        }
    }

    //try
    //{
    //  string  filePath = AppDomain.CurrentDomain.BaseDirectory + "uploadphoto\\" + this.FileUpload1.FileName;
    //    //string filePath = @"C:\Temp\TestCase.txt";
    //    System.Diagnostics.Process process = new System.Diagnostics.Process();
    //    System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
    //    startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
    //    startInfo.FileName = "C:\\Program Files\\Windows Defender\\MpCmdRun.exe";
    //    startInfo.Arguments = "-Scan -ScanType 3 -File " + filePath;
    //    process.StartInfo = startInfo;
    //    var result = process.Start();
    //    Response.Write(result);
    ////    Console.WriteLine("Scanned with result: " + result.ToString());
    //   // Console.ReadLine();
    //}
    //catch (Exception ex)
    //{
    //    Console.WriteLine(ex.Message);
    //    Console.ReadLine();
    //}


    protected void Button3_Click(object sender, EventArgs e)
    {
        string strFileName;
        strFileName = FileUpload1.PostedFile.FileName;
        string c = System.IO.Path.GetFileName(strFileName);
        try
        {
            string filepath = AppDomain.CurrentDomain.BaseDirectory + "uploadphoto\\" + this.FileUpload1.FileName;
            //this.FileUpload1.SaveAs(path);
            FileUpload1.PostedFile.SaveAs(filepath);

            //FileUpload1.PostedFile.SaveAs(("C:\\ServerFolder\\Uploads\\" + c));
            Process myProcess = new Process();
           myProcess.StartInfo.FileName = "C:\\Program Files\\Windows Defender\\MpCmdRun.exe";
            string myprocarg = (filepath+ (c + " /REPORT "+filepath));
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
                Label1.Text = (" - It has been deleted from the server");
                   }
                else
            {
                Label1.Text = ("Your File Uploaded Sucessfully at server It was checked with an anti-virus");
                
                }
            }
        
        catch (Exception Exp)
        {
            Label1.Text = "An Error occured. Please check the attached file";
        
        }
    }
}

