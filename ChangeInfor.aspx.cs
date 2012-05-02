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

public partial class ChangeInfor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["uid"] == null)
        {
            Response.Redirect("Dangnhap.aspx");
        }
        if (!IsPostBack)
        {
            String[] str = new String[5] { "", "", "", "", "" };
            str = LoginCus.Customer(Convert.ToInt32(Session["uid"]));
            

            fullname.Text = str[1];
            phone.Text = str[3];
            email.Text = str[4];
            add.Text = str[2];
            username.Text = str[0];
        }
    }
    protected void btnchange_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
        Response.Redirect("Default.aspx");
    }
}
