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

public partial class PageAdmin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["sid"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            string[] url = Request.Url.Segments;
            //Response.Write(url[3]);
            activemenu(url[3].ToString());
        }

    }
    public void activemenu(string url)
    {
        switch (url)
        {
            case "Default.aspx":
                phome.CssClass = "nav-top-item current";
                DEFAULT.CssClass=("current");
                break;
            case "NhomSP.aspx":
                products.CssClass = "nav-top-item current";
                link_danhmucsp.CssClass=("current");
                break;
            case "NhomSPadd.aspx":
                products.CssClass = "nav-top-item current";
                link_themdmsp.CssClass=("current");
                break;
            case "NhomSPedit.aspx":
                products.CssClass = "nav-top-item current";
                break;
            case "Products.aspx":
                products.CssClass = "nav-top-item current";
                sanpham.CssClass=("current");
                break;
            case "SanPhamEdit.aspx":
                products.CssClass = "nav-top-item current";
                break;
            case "SanPhamAdd.aspx":
                products.CssClass = "nav-top-item current";
                addsanpham.CssClass=("current");
                break;
            case "News.aspx":
                news.CssClass = "nav-top-item current";
                link_danhsachbaiviet.CssClass = ("current");
                break;
            case "NewsAdd.aspx":
                news.CssClass = "nav-top-item current";
                link_themmoibaiviet.CssClass = ("current");
                break;
            case "PesonalPage.aspx":
                setting.CssClass = "nav-top-item current";
                link_personal.CssClass = ("current");
                break;
            case "ChangePass.aspx":
                setting.CssClass = "nav-top-item current";
                link_changepass.CssClass = ("current");
                break;
            case "Customer.aspx":
                cuslh.CssClass = "nav-top-item current";
                link_cus.CssClass = ("current");
                break;
            case "Contact.aspx":
                cuslh.CssClass = "nav-top-item current";
                link_lh.CssClass = ("current");
                break;
            default:
                phome.CssClass = "nav-top-item current";
                DEFAULT.CssClass=("current");
                break;
        }
    }

    protected void lbtSingout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("~/Admin/Default.aspx");
    }
}
