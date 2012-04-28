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

public partial class Admin_ChangeInfor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var str = QueryAdmin.User(id);
            ten.Text = str[1];
            username.Text = str[5];
            email.Text = str[2];
            add.Text = str[4];
            phone.Text = str[7];
            bith.Text = str[8];
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
        Response.Redirect("PesonalPage.aspx");
    }
}
