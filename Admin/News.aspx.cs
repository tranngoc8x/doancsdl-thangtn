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

public partial class Admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
        }
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteNews")
        {
            ListViewDataItem data = (ListViewDataItem)e.Item;
            int id = (int)ListView1.DataKeys[data.DisplayIndex].Value;
            DanhSachBaiVet.DeleteParameters["id"].DefaultValue = id.ToString();
            DanhSachBaiVet.Delete();
            Response.Redirect("News.aspx");
        }
    }
}
