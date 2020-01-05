using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;

public partial class Dangnhap : System.Web.UI.Page
{
    //Download source code tại Sharecode.vn
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["Remember"] != null)
        {
            Login1.RememberMeSet = true;
        }
        if (Request.Cookies["UserAndTime"] != null)
        {
            HttpCookie cookie = Request.Cookies["UserAndTime"];
            Login1.UserName = cookie.Values["User"].ToString();
        }
    }
    public void WriteCookie()
    {
        if (Login1.RememberMeSet == true)
        {
            HttpCookie cookie = new HttpCookie("Remember", "Yes");
            Response.Cookies.Add(cookie);
            cookie = new HttpCookie("UserAndTime");
            cookie.Values.Add("User", Login1.UserName);
            cookie.Values.Add("Time", DateTime.Now.ToShortDateString());
            cookie.Expires = DateTime.Now.AddDays(30.0);
            Response.Cookies.Add(cookie);
        }
    }
    
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand("select * from TaiKhoan where TenTK='" + Login1.UserName + "' and MatKhau='" + Login1.Password + "'",conn);
        cmd.CommandType = CommandType.Text;
        conn.Open();
        SqlDataReader rs = cmd.ExecuteReader();
        if (rs.Read())
        {
            Session.Contents["trangthai"] = "dadangnhap";
            Session["MaNhom"] = rs["MaNhom"].ToString();
            Session["MaTK"] = rs["MaTK"].ToString();
            Session["TenTK"] = rs["TenTK"].ToString();
            //chap nhan dang nhap
            WriteCookie();
            //FormsAuthentication.SetAuthCookie(Login1.UserName, Login1.RememberMeSet);
            if (Session["MaNhom"].ToString() == "3")
            {
                Response.Redirect("Default.aspx");
                Session["Roles"] = "(Member)";
            }
            //else if (Session["MaNhom"].ToString() == "2")
            //{
            //    Response.Redirect("admin/Admin.aspx");
            //    Session["Roles"] = "(User)";
            //}
            else
            {
                Session["Roles"] = "(Administrator)";
                Response.Redirect("admin/Admin.aspx");
            }

        }
        else Login1.FailureText = "Tên đăng nhập hoặc mật khẩu chưa đúng !";
        rs.Close();
        cmd.Dispose();
        conn.Close();
    }
}
