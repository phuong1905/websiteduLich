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

public partial class Dangky : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*string[] paramNames = new string[7] 
                                {
                                    "@TenTK",
                                    "@MatKhau",
                                    "@NhapLai",
                                    "@TenHienThi",
                                    "@Email",
                                    "@CauHoi",
                                    "@CauTraLoi"
                                };
        object[] values = new object[7]
                                {
                                    txttaikhoan.Text,
                                    txtmatkhau.Text,
                                    txtnhaplai.Text,
                                    txttenhienthi.Text,
                                    txtemail.Text,
                                    txtcauhoi.Text,
                                    txtcauhoi.Text,
                                };
        if (Hamdulieu.AddData("themmoitaikhoan", paramNames, values))
        {
            Session["TenTK"] = txttaikhoan.Text;
            Session["Roles"] = "(Member)";

        }
        else
            lbtinnhan.Text = "Lỗi trong quá trình tạo tài khoản";*/

 
            {
                string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString.ToString();
                SqlConnection con = new SqlConnection(strCon);
                con.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                cmd.CommandText = @"insert into TAIKHOAN(TenTK,MatKhau,NhapLai,TenHienThi,Email,CauHoi,CauTraLoi,MaNhom)
                    values(@TenTK,@MatKhau,@NhapLai,@TenHienThi,@Email,@CauHoi,@CauTraLoi,@MaNhom)";
                cmd.Parameters.Add("@TenTK", SqlDbType.NVarChar, 50);
                cmd.Parameters["@TenTK"].Value = txttaikhoan.Text;
                cmd.Parameters.Add("@MatKhau", SqlDbType.NVarChar, 50);
                cmd.Parameters["@MatKhau"].Value = txtmatkhau.Text;
                cmd.Parameters.Add("@NhapLai", SqlDbType.NVarChar,50);
                cmd.Parameters["@NhapLai"].Value = txtnhaplai.Text;
                cmd.Parameters.Add("@TenHienThi", SqlDbType.NVarChar, 100);
                cmd.Parameters["@TenHienThi"].Value = txttenhienthi.Text;
                cmd.Parameters.Add("@Email", SqlDbType.NVarChar, 100);
                cmd.Parameters["@Email"].Value = txtemail.Text;
                cmd.Parameters.Add("@CauHoi", SqlDbType.NVarChar, 100);
                cmd.Parameters["@CauHoi"].Value = txtcauhoi.Text;
                cmd.Parameters.Add("@CauTraLoi", SqlDbType.NVarChar, 100);
                cmd.Parameters["@CauTraLoi"].Value = txttraloi.Text;
                cmd.Parameters.Add("@MaNhom", SqlDbType.Int);
                cmd.Parameters["@MaNhom"].Value = 1;
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("~/Dangnhap.aspx");
            }





    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void txttraloi_TextChanged(object sender, EventArgs e)
    {

    }
}
