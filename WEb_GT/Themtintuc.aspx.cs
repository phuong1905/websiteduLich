using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using gioithieuhaiduong.Business;
public partial class admin_Themtintuc : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        //Download source code tại Sharecode.vn
    }
    TinTucBUS bus = new TinTucBUS();
    protected void btnhap_Click(object sender, EventArgs e)
    {
        //bus.ThemTinTuc(txttieude.Text,txtanh.Text,txtsoluoc.Text,txtmota.Text,txtngaygui.TodaysDate);

        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
        SqlConnection con = new SqlConnection(strCon);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.CommandText = @"insert into TINTUC(TieuDeChinh,Anh,SoLuoc,MoTa,NgayGui)
                    values(@TieuDeChinh,@Anh,@SoLuoc,@MoTa,@NgayGui)";
        cmd.Parameters.Add("@TieuDeChinh", SqlDbType.NVarChar, 250);
        cmd.Parameters["@TieuDeChinh"].Value = txttieude.Text;
        cmd.Parameters.Add("@Anh", SqlDbType.NVarChar, 250);
        cmd.Parameters["@Anh"].Value = txtanh.Text;
        cmd.Parameters.Add("@SoLuoc", SqlDbType.NVarChar, 450);
        cmd.Parameters["@SoLuoc"].Value = txtsoluoc.Text;
        cmd.Parameters.Add("@MoTa", SqlDbType.NVarChar, 10000);
        cmd.Parameters["@MoTa"].Value = txtmota.Text;
        cmd.Parameters.Add("@NgayGui", SqlDbType.DateTime);
        cmd.Parameters["@NgayGui"].Value = DateTime.Now;       
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script>alert('Thêm tin thành công!')</script>");

    }

}
