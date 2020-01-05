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
namespace WEb_GT.Business
{
    public class TinTuc
    {
        private string tieudechinh;
        private string anh;
        private string soluoc;
        private string mota;
        private DateTime ngaygui;
        public TinTuc(string tieudechinh,string anh,string soluoc,string mota,DateTime ngaygui)
        {
            this.TieuDeChinh = tieudechinh;
            this.Anh = anh;
            this.SoLuoc = soluoc;
            this.MoTa = mota;
            this.NgayGui = ngaygui;
        }
        public string TieuDeChinh
        {
            get { return tieudechinh; }
            set
            { tieudechinh = value; }
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
        public string MoTa
        {
            get { return mota; }
            set { mota = value; }
        }
        public DateTime NgayGui
        {
            get { return ngaygui; }
            set { ngaygui = value; }
        }
    }
}