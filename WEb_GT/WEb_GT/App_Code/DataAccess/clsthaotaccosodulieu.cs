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
using System.Data.Sql;
/// <summary>
/// Summary description for clsthaotaccosodulieu
/// </summary>
public class clsthaotaccosodulieu
{
	public clsthaotaccosodulieu()
    {
        strConnect = @"Data Source=.\SQLEXPRESS; AttachDbFilename=|DataDirectory|HD.mdf;Integrated Security=True;User Instance=True";
	}
    string strConnect = "";
    SqlConnection sqlCon;
    SqlCommand sqlCom;
    SqlDataReader sqlDr;
    SqlDataAdapter sqlAda;
    DataSet ds = new DataSet();
    void KetNoi()
    {
        sqlCon = new SqlConnection();
        sqlCon.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //Download source code tại Sharecode.vn
        try
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

        }
        catch (Exception e)
        {
            //string a = "bạn chưa kết nối cơ sở dữ liệu";
            throw new Exception(e.Message);

        }
            
    }
    void NgatKetNoi()
    {
        sqlCon.Close();
    }
    public void ThucThiSQL(string strSQL)
    {
        //Bước 1:
        KetNoi();
        //Bước 2:
        sqlCom = new SqlCommand(strSQL, sqlCon);
        sqlCom.ExecuteNonQuery();
        //Bước 3:
        NgatKetNoi();
    }
    public void ThucThiSQLPKN(string strSQL)
    {
        sqlAda = new SqlDataAdapter(strSQL, strConnect);
        sqlAda.Fill(ds, "TK61");
    }
    public DataTable login(string tentk, string matkhau)
    {
        KetNoi();
        DataTable tbl = new DataTable();
        string SqlStr = "SELECT TenTK,MatKhau FROM TaiKhoan where TenTK='" + tentk + "' and MatKhau='" + matkhau + "'";
        SqlDataAdapter da = new SqlDataAdapter(SqlStr, sqlCon);
        da.Fill(tbl);
        return tbl;
    }
    public int KiemTra(string TenBang, string TenTruong, string GiaTri)
    {
        int kq = 0;
        //Kết nối
        KetNoi();
        //Lấy bản ghi
        string strSelect = "select count(*) from " + TenBang + " where " + TenTruong + "='" + GiaTri + "' ";
        sqlCom = new SqlCommand(strSelect, sqlCon);
        kq = (int)sqlCom.ExecuteScalar();
        //Ngat
        NgatKetNoi();
        //
        return kq;
        //
    }
    public void loaddatagrigview(GridView gr, string strselect)
    {
        ds = new DataSet();
        sqlAda = new SqlDataAdapter(strselect,strConnect);
        sqlAda.Fill(ds,"Tenbang");
        gr.DataSource = ds.Tables[0];
    }
    public DataTable ReturnDataTable(string strSQL)
    {
        DataTable Table = new DataTable(strSQL);
        sqlAda = new SqlDataAdapter(strSQL, strConnect);
        sqlAda.Fill(Table);
        return Table;
    }
}
