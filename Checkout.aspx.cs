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

public partial class Checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("Dangnhap.aspx");
        }
        if (!IsPostBack)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void changadd_Click(object sender, EventArgs e)
    {
        Response.Redirect("ChangeInfor.aspx");
    }
}
