using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            //string temp = Session["fullname"].ToString();
            if (Session["sid"] != null)
            {
                Response.Redirect("~/Admin/Default.aspx");
            }
        }

    }
    
    protected void btnLogin_Click(object sender, EventArgs e)
    {

        String[] arr = new String[3] {"", "",""};
        arr = LoginAdmin.Kiemtra(txtUserName.Text, txtPassword.Text);
        //Response.Write("<script>alert('" + arr[0] + "');</script>");
        switch (arr[0])
        {
            case "0":
                Session.Timeout = 10;
                Session["sid"] = Convert.ToInt32(arr[1]);
                Session["fullname"] = arr[2];
                //Response.Write("<script>alert('" + Session["fullname"] + "');</script>");
                Response.Redirect("~/Admin/Default.aspx");
                break;
            case "1":
                FailureText.Text = "Tên đăng nhập hoặc mật khẩu không chính xác.";
                break;
            case "2":
                FailureText.Text = "Tài khoản chưa được kích hoạt.";
                break;
        }
        txtUserName.Text = "";
        txtPassword.Text = "";
    }
}
