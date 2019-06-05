using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data;
using System.IO;
using System.Data;
using System.Data.OleDb;
using System.Configuration;
using System.Data.SqlClient;

public partial class Admin_Reviewfilters : System.Web.UI.Page
{
    Class1 cs = new Class1();
    //string constr, Query, sqlconn;
    OleDbConnection Econ;
    //SqlConnection con;

    string constr, Query, sqlconn;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    private void ExcelConn(string FilePath)
    {

        constr = string.Format(@"Provider=Microsoft.ACE.OLEDB.12.0;Data Source={0};Extended Properties=""Excel 12.0 Xml;HDR=YES;""", FilePath);
        Econ = new OleDbConnection(constr);

    }
    private void InsertExcelRecords(string FilePath)
    {
        ExcelConn(FilePath);

        Query = string.Format("Select [id],[NegativeWords],[Weight] FROM [{0}]", "Sheet1$");
        OleDbCommand Ecom = new OleDbCommand(Query, Econ);
        Econ.Close();
        Econ.Open();

        DataSet ds = new DataSet();
        OleDbDataAdapter oda = new OleDbDataAdapter(Query, Econ);
        Econ.Close();
        oda.Fill(ds);
        DataTable Exceldt = ds.Tables[0];
        //connection();
        //creating object of SqlBulkCopy  


        //SqlBulkCopy objbulk= new SqlBulkCopy(con);
        SqlBulkCopy objbulk = cs.select1();


        //assigning Destination table name  
        objbulk.DestinationTableName = "negativedataset";
        //Mapping Table column  
        objbulk.ColumnMappings.Add("Id", "id");
        objbulk.ColumnMappings.Add("NegativeWords", "NegativeWords");
        objbulk.ColumnMappings.Add("Weight", "Weight");
        //objbulk.ColumnMappings.Add("Designation", "Designation");
        //inserting Datatable Records to DataBase  



        //con.Open();
        cs.openconnection();
        objbulk.WriteToServer(Exceldt);
        //con.Close();
        cs.closeconnection();


    }

    protected void Button1_Click(object sender, EventArgs e)
    {


        string CurrentFilePath = Path.GetFileName(FileUpload1.PostedFile.FileName);
        string excelPath = Server.MapPath("~/dataset/") + CurrentFilePath; FileUpload1.SaveAs(excelPath);
        InsertExcelRecords(excelPath);



        //string filename;
        //if (FileUpload1.HasFile)
        //{




        //    filename = Path.GetFileName(FileUpload1.FileName);
        //    FileUpload1.SaveAs(Server.MapPath("~/dataset/") + filename);
        //    string extn = Path.GetExtension(FileUpload1.PostedFile.FileName);
        //    string conString = string.Empty;


        //    switch (extn)
        //    {
        //        case ".xls": //Excel 97-03.
        //            conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source =" + filename + "; Extended Properties=\"Excel 8.0; HDR=Yes; IMEX=2\"";
        //            break;
        //        case ".xlsx": //Excel 07 and above.
        //            conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source =" + filename + "; Extended Properties=\"Excel 12.0; HDR=Yes; IMEX=2\"";
        //            break;
        //    }
        //    DataTable dt = new DataTable();
        //    conString = string.Format(conString, extn);

        //    using (OleDbConnection connExcel = new OleDbConnection(conString))
        //    {
        //        using (OleDbCommand cmdExcel = new OleDbCommand())
        //        {
        //            using (OleDbDataAdapter odaExcel = new OleDbDataAdapter())
        //            {
        //                //conString = "FIL=MS Access;DSN=your_dsn_name";
        //                cmdExcel.Connection = connExcel;
        //                //connExcel.Close();
        //                //Get the name of First Sheet.
        //                connExcel.Open();
        //                DataTable dtExcelSchema;
        //                dtExcelSchema = connExcel.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, null);
        //                string sheetName = dtExcelSchema.Rows[0]["TABLE_NAME"].ToString();
        //                //connExcel.Close();


        //                //connExcel.Open();
        //                cmdExcel.CommandText = "SELECT * From [" + sheetName + "]";
        //                odaExcel.SelectCommand = cmdExcel;
        //                odaExcel.Fill(dt);
        //                connExcel.Close();
        //            }
        //        }
        //    }

        //    conString = ConfigurationManager.ConnectionStrings["Constring"].ConnectionString;
        //    using (SqlConnection con = new SqlConnection(conString))
        //    {
        //        using (SqlBulkCopy sqlBulkCopy = new SqlBulkCopy(con))
        //        {
        //            //Set the database table name.
        //            sqlBulkCopy.DestinationTableName = "dbo.Customers";

        //            //[OPTIONAL]: Map the Excel columns with that of the database table
        //            sqlBulkCopy.ColumnMappings.Add("Id", "id");
        //            sqlBulkCopy.ColumnMappings.Add("Name", "NegativeWords");
        //            sqlBulkCopy.ColumnMappings.Add("Country", "Weight");

        //            con.Open();
        //            sqlBulkCopy.WriteToServer(dt);
        //            con.Close();
        //        }
        //    }


        //}

    }
        }
