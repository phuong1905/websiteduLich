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

public partial class Quydinhwebsite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btdongy_Click(object sender, EventArgs e)
    {
        if (ch1.Checked)
            Response.Redirect("~/admin/Dangky.aspx");
        else
            lbtinnhan.Text = "Bạn chưa đồng ý với chúng tôi";
    }
    protected void bthuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}
