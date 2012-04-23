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

public partial class Admin_ManagerPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["fullname"] == "")
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteProducts")
        {
            ListViewDataItem data = (ListViewDataItem)e.Item;
            int id = (int)ListView1.DataKeys[data.DisplayIndex].Value;
            SanPham_DanhSach_Admin.DeleteParameters["id"].DefaultValue = id.ToString();
            SanPham_DanhSach_Admin.Delete();
            Response.Redirect("Products.aspx");
        }
    }
}
