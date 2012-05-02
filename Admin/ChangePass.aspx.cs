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

public partial class Admin_ChangePass : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        int val = QueryAdmin.Changepass(Convert.ToInt32(Session["sid"]),oldpass.Text,newpass.Text);
        if (val == 0)
        {
            oldpass.Text = "";
            newpass.Text = "";
            repass.Text = "";
            //notification.Style="display:block";
            ErrorMessage.Text = "Mật khẩu hiện tại không chính sác! Hãy kiểm tra lại.";
        }
        else
        {
            Response.Redirect("PesonalPage.aspx");
        }
    }
}
