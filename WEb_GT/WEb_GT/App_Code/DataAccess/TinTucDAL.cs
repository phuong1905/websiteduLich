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
    public class TinTucDAL
    {
        clsthaotaccosodulieu cls = new clsthaotaccosodulieu();
        public void themtintuc(TinTuc bustintuc)
        {
            cls.ThucThiSQL("insert into TinTuc values(N'"+bustintuc.TieuDeChinh+"',N'"+bustintuc.Anh+"',N'"+bustintuc.SoLuoc+"',N'"+bustintuc.MoTa+"',N'"+bustintuc.NgayGui+"')");

        }
        public DataTable laydulieubangtintuc()
        {
            return cls.ReturnDataTable("select * from TinTuc");
        }
        public TinTucDAL()
        {
        }
    }
}