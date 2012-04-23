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

public partial class Admin_DanhmucSanpham : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void EditItem_Click(object sender, EventArgs e)
    {
       
    }
    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "DeleteNSP")
        {
            ListViewDataItem data = (ListViewDataItem)e.Item;
            int id = (int)ListView1.DataKeys[data.DisplayIndex].Value;
            DanhMucSP.DeleteParameters["id"].DefaultValue = id.ToString();
            DanhMucSP.Delete();
            Response.Redirect("NhomSP.aspx");
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
