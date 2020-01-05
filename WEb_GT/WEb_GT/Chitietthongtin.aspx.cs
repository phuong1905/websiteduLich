using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        con.Open();
        SqlCommand cm = new SqlCommand();
        cm.CommandText = "select *  from ThongTin where MaTT like '" + Request.QueryString["MaTT"] + "'";
        cm.Connection = con;
        SqlDataReader dr;
        dr = cm.ExecuteReader();
        if (dr.Read())
        {
          lbtenthongtin.Text=dr["TenTT"].ToString();
          img.ImageUrl=dr["Anh"].ToString();
            lbngaygui.Text=dr["NgayGui"].ToString();
            lbsoluoc.Text=dr["SoLuoc"].ToString();
            lbchitiet.Text=dr["ChiTiet"].ToString();
        }
        cm.Dispose();
        con.Close();
    }
}
