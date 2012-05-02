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
using System.Data.SqlClient;

public partial class Admin_Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

     }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteLH")
        {
            ListViewDataItem data = (ListViewDataItem)e.Item;
            int id = (int)ListView1.DataKeys[data.DisplayIndex].Value;
            DanhsachLienhe.DeleteParameters["id"].DefaultValue = id.ToString();
            DanhsachLienhe.Delete();
            Response.Redirect("Contact.aspx");

        }
    }
}
