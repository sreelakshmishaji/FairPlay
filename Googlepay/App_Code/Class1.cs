using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.OleDb;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    SqlConnection con = new SqlConnection();
    public Class1()
    {
        con.ConnectionString = "Data Source=DESKTOP-8GC97NH;Initial Catalog=Googlepay;Integrated Security=True; ";
    }
    public int insert(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str,con);
        int res = cmd.ExecuteNonQuery();
        con.Close();
        return res;
    }
    public DataTable select(string str)
    {
        con.Open();
        {
            //SqlBulkCopy sv = new SqlBulkCopy(con);
           SqlDataAdapter sdn = new SqlDataAdapter(str, con);
            DataTable dt = new DataTable();
            sdn.Fill(dt);
            con.Close();
            return dt;
        }
       
    }

    public SqlBulkCopy select1()
    {
        con.Open();
        SqlBulkCopy sv = new SqlBulkCopy( con);
        con.Close();
        return sv;
    }
    public void openconnection()
    {
        if(con.State!=ConnectionState.Open)
        {
            con.Open();
        }
    }
    public void closeconnection()
    {
        if (con.State != ConnectionState.Closed)
        {
            con.Close();
        }
    }
}