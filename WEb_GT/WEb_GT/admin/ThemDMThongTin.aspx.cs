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
using System.IO;
using WEb_GT.Business;

public partial class admin_ThemDMThongTin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    clsthaotaccosodulieu cls = new clsthaotaccosodulieu();
    protected void btnhap_Click(object sender, EventArgs e)
    {
        try
        {
            string str = "insert into DMThongTin values(N'" + txtten.Text + "',N'" +txtghichu.Value + "')";
            cls.ThucThiSQL(str);
            //cls.loaddatagrigview(dmthongtin, "select * from DMThongTin");
        }
        catch { }
    }
}
