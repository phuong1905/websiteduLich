using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;

public partial class Trangchu : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["TenTK"] != null)
        {
            lgthoat.Visible = true;
            litchao.Visible = true;
            lituser.Visible = true;
            lbvaitro.Visible = true;
            lituser.Text = Session["TenTK"].ToString();
            //lbvaitro.Text = Session["Roles"].ToString();
            litchao.Text = "Xin chào";
        }
    }

    protected void thoat(object sender, EventArgs e)
    {
        System.Web.Security.FormsAuthentication.SignOut();
        Session["UserName"] = null;
        Session["Roles"] = null;
        lgthoat.Visible = false;
        litchao.Visible = false;
        lituser.Visible = false;
        lbvaitro.Visible = false;
        Response.Redirect(Request.ApplicationPath);
    }
}
