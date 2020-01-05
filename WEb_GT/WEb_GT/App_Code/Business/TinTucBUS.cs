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
    public class TinTucBUS
    {
        TinTucDAL t = new TinTucDAL();
        public void ThemTinTuc(string tieudechinh, string anh, string soluoc, string mota, DateTime ngaygui)
        {
            t.themtintuc(new TinTuc(tieudechinh,anh,soluoc,mota,ngaygui));
            t.laydulieubangtintuc();
        }
        public TinTucBUS()
        {
        }
    }
}