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
    public class ThongTin
    {
        private string matt;
        private string tentt;
        private string anh;
        private string soluoc;
        private string chitiet;
        private DateTime ngaygui;
        public ThongTin(string matt,string tentt,string anh,string soluoc,string chitiet,DateTime ngaygui)
        {
            this.MaDMTT = matt;
            this.TenTT = tentt;
            this.Anh = anh;
            this.SoLuoc = soluoc;
            this.ChiTiet = chitiet;
            this.NgayGui = ngaygui;
        }
        public string MaDMTT
        {
            get { return matt; }
            set { matt = value; }
        }
        public string TenTT
        {
            get { return tentt; }
            set { tentt = value; }
        }
        public string Anh
        {
            get { return anh; }
            set { anh = value; }
        }
        public string SoLuoc
        {
            get { return soluoc; }
            set { soluoc = value; }
        }
        public string ChiTiet
        {
            get { return chitiet; }
            set { chitiet = value; }
        }
        public DateTime NgayGui
        {
            get { return ngaygui; }
            set { ngaygui = value; }
        }
    }
}
