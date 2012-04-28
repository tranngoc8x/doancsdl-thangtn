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

public partial class Dangnhap : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string temp = Session["fullname"].ToString();
            if (Session["uid"] != null)
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        String[] arr = new String[3] { "", "", "" };
        arr = LoginCus.Kiemtra(username.Text, password.Text);
        //Response.Write("<script>alert('" + arr[0] + "');</script>");
        switch (arr[0])
        {
            case "0":
                Session.Timeout = 12;
                Session["uid"] = Convert.ToInt32(arr[1]);
                Session["cusname"] = arr[2];
                //Response.Write("<script>alert('" + Session["fullname"] + "');</script>");
                Response.Redirect("Default.aspx");
                break;
            case "1":
                FailureText.Text = "<font color='red'>Error : Login fail.Try again !</font>";
                break;
        }
        username.Text = "";
        password.Text = "";
    }
}
