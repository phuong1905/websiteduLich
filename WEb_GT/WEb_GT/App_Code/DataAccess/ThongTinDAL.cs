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
using WEb_GT.Business;
namespace WEb_GT.DataAccess
{
    public class ThongTinDAL
    {
        clsthaotaccosodulieu cls = new clsthaotaccosodulieu();
        public void them(ThongTin ttbus)
        {
            cls.ThucThiSQL("insert into ThongTin values(N'"+ttbus.MaDMTT+"',N'"+ttbus.TenTT+"',N'"+ttbus.Anh+"',N'"+ttbus.SoLuoc+"',N'"+ttbus.ChiTiet+"',N'"+ttbus.NgayGui+"')");
            //Download source code tại Sharecode.vn
        }
        public DataTable LayDuLieuBangThongTin()
        {
            return cls.ReturnDataTable("select * from ThongTin");
        }
        
        public ThongTinDAL()
        {
        }
    }
}