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

public partial class Admin_NhomSPedit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            txtten.Text = QueryAdmin.NSP(Convert.ToInt32(Request.QueryString["id"]));
           
        }
    }
    protected void btn_update_Click(object sender, EventArgs e)
    {
        SqlDataSource1.Update();
        Response.Redirect("NhomSP.aspx");
    }
}
