using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class Users_MasterUserPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["soluong"] != null)
            {
                Session["soluong"] = Convert.ToInt32(Session["soluong"]);
                SoLuong.Text = "Có " + Session["soluong"] + " sản phẩm trong giỏ !";
            }
            else { Session["soluong"] = 0; }
            string[] url = Request.Url.Segments;
            activemenu(url[2].ToString());
            try
            {
                LoadData("http://vnexpress.net/ListFile/Weather/hanoi.xml");
            }
            catch { }
        }
        else
        {
            Session["soluong"] = Convert.ToInt32(Session["soluong"]) + 1;
            SoLuong.Text = "Có "+Session["soluong"]+" sản phẩm trong giỏ !";
        }
    }
    public void activemenu(string url)
    {
        switch (url)
        {
            case "default.aspx":
                lnkTrangChu.CssClass = "mega active";
                litrangchu.Attributes.Add("class", "mega active");
                break;
            case "IntroducePage.aspx":
                lnkGioiThieu.CssClass = "mega active";
                ligioithieu.Attributes.Add("class", "mega active");
                break;
            case "Products.aspx":
                lnkSanPham.CssClass = "mega active";
                lisanpham.Attributes.Add("class", "mega active");
                break;
            case "Dangnhap.aspx":
                lnkdangnhap.CssClass = "mega active";
                lidangnhap.Attributes.Add("class", "mega active");
                break;
            case "Dangky.aspx":
                lnkdangky.CssClass = "mega active";
                lidangky.Attributes.Add("class", "mega active");
                break;
            case "News.aspx":
                lnkTinTuc.CssClass = "mega active";
                litintuc.Attributes.Add("class", "mega active");
                break;
            case "Contact.aspx":
                hplContact.CssClass = "mega active";
                licontact.Attributes.Add("class", "mega active");
                break;
            default:
                lnkTrangChu.CssClass = "mega active";
                litrangchu.Attributes.Add("class", "mega active");
                break;
        }
    }
 // Hàm bind dữ liệu xml ra DataTable
    private DataTable GetTable(string FileName)
    {
        DataTable dtb = new DataTable();
        DataSet authorsDataSet;
        string filePath = FileName;
        authorsDataSet = new DataSet();

        authorsDataSet.ReadXml(filePath);
        dtb = authorsDataSet.Tables[0];
        return dtb;
        //GridView1.DataSource = authorsDataSet.Tables[0].DefaultView;
        //GridView1.DataBind();
    }
    // Load dữ liệu theo filepath
    private void LoadData(string xmlFilePath)
    {
        DataTable dtb = GetTable(xmlFilePath);
        if (dtb.Rows.Count > 0)
        {
            Literal1.Text = "&nbsp;<img src='http://vnexpress.net/Images/Weather/" + dtb.Rows[0][0].ToString().Trim() + "'>";
            Literal1.Text += "<img src='http://vnexpress.net/Images/Weather/" + dtb.Rows[0][1].ToString().Trim() + "'>";
            Literal1.Text += "<img src='http://vnexpress.net/Images/Weather/" + dtb.Rows[0][2].ToString().Trim() + "'>";
            Literal1.Text += "<img src='http://vnexpress.net/Images/Weather/c.gif'>";
            Literal1.Text += "<br>" + dtb.Rows[0][6].ToString().Trim();
        }
        dtb.Dispose();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadData("http://vnexpress.net/ListFile/Weather/" + DropDownList1.SelectedValue.ToString());
    }

    protected void ibtnGioHang_Click_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/YourCart.aspx");
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        String[] arr = new String[3] { "", "", ""};
        arr = LoginCus.Kiemtra(username.Text,password.Text);
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
                FailureText.Text = "Login fail.Try again !";
                break;
        }
        username.Text = "";
        password.Text = "";
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Remove("uid");
        Response.Redirect("Default.aspx");
    }
}
