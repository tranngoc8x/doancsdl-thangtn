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

public partial class Admin_SanPhamEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var str = QueryAdmin.Sanpham(id);
            txtten.Text = str[0];
            mota.Text = str[1];
            giaban.Text = str[2];
            giamgia.Text = str[4];
            soluong.Text = str[3];
            Chitiet.Text = str[5];
        }
    }
    protected void btn_ins_Click(object sender, EventArgs e)
    {
        if (file.HasFile)
        {
            try
            {
                string filename = (file.PostedFile.FileName);
                file.SaveAs(Server.MapPath("../Images/Products/") + filename);
            }
            catch (Exception ex)
            {
            }
        }
        SqlDataSource1.Update();
        Response.Redirect("Products.aspx");
    }
}
