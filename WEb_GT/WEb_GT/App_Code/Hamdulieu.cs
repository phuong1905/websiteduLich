using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Hamdulieu
/// </summary>
public class Hamdulieu
{
    public static SqlConnection conn;
    public static SqlCommand cmd;
    public static SqlDataAdapter da;
    public Hamdulieu()
    {
        //
        // TODO: Add constructor logic here
        ////Download source code tại Sharecode.vn
    }
    public static DataSet DataSetRead(string queryString)
    {
        DataSet ds = new DataSet();
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        conn.Open();
        da = new SqlDataAdapter(queryString, conn);
        ds.Tables.Clear();
        da.Fill(ds);
        da.Dispose();
        conn.Dispose();
        return ds;
    }
    public static DataTable DataRead(string queryString)
    {
        DataTable dt = new DataTable();
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        da = new SqlDataAdapter(queryString, conn);
        dt.Clear();
        // da.Fill(dt);
        da.Dispose();
        conn.Dispose();
        return dt;
    }
    public static bool AddData(string sp_Name, string[] paramNames, object[] values)
    {
        conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        // Goi thu tuc 
        SqlCommand cmd = new SqlCommand(sp_Name, conn);
        cmd.CommandType = CommandType.StoredProcedure;
        // Truyen tham so
        for (int i = 0; i < paramNames.Length; i++)
        {
            cmd.Parameters.AddWithValue(paramNames[i], values[i]);
        }
        try
        {
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            conn.Close();
            conn.Dispose();
            return true;
        }
        catch
        {
            return false;
        }
        return false;
    }
}
