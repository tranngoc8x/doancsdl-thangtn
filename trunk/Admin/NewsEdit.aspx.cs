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

public partial class Admin_NewsAdd : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            int id = Convert.ToInt32(Request.QueryString["id"]);
            var str = QueryAdmin.Tintuc(id);
            tieude.Text = str[0];
            tomtat.Text = str[1];
            noidung.Text = str[2];
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        if (file.HasFile)
        {
            try
            {
                string filename = (file.PostedFile.FileName);
                file.SaveAs(Server.MapPath("../Images/News/") + filename);
            }
            catch (Exception ex)
            {
            }
        }
        SqlEditNews.Update();
        Response.Redirect("News.aspx");
    }
}
