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

            //    if (Notification.Text.Equals("") == false)
            //    {
            //        Session["Notification"] = "";
            //    }
            //    else
            //    {
            //        Notification.Text = Session["Notification"].ToString();

            //    }
            //}
            //else
            //{
            //    Session["Notification"] = false;
            //    Notification.Text = "";
            //}
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
        //if (e.CommandName == "EditNSP")
        //{
        //    ListViewDataItem data = (ListViewDataItem)e.Item;
        //    int id = (int)ListView1.DataKeys[data.DisplayIndex].Value;
        //    //xong
        //    SqlCommand cmd = new SqlCommand("A_News_Edit_Select",conn);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    cmd.Parameters.AddWithValue("@pass", id);
        //    SqlDataReader dreader;
        //    conn.Open();
        //    dreader = cmd.ExecuteReader();
        //    if (dreader.Read()) {

        //    }


        //   Response.Redirect("NhomSP.aspx");
        //}
    }
}
