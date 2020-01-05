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
using WEb_GT.DataAccess;
namespace WEb_GT.Business
{
    public class ThongTinBUS
    {
        ThongTinDAL ttdal = new ThongTinDAL();
        public void themtt(string matt, string tentt, string anh, string soluoc, string chitiet, DateTime ngaygui)
        {
            ttdal.them(new ThongTin(matt,tentt,anh,soluoc,chitiet,ngaygui));
            ttdal.LayDuLieuBangThongTin();
        }
        public ThongTinBUS()
        {
            //Download source code tại Sharecode.vn
        }
    }
}