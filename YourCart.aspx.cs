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

public partial class YourCart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DataTable dt = (DataTable)Session["GioHang"];
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
    protected void Update_Click(object sender, EventArgs e)
    {
        Carts gh = new Carts();
        DataTable dt = (DataTable)Session["GioHang"];
        foreach (GridViewRow gr in GridView1.Rows)
        {
            TextBox txtsl = (TextBox)gr.FindControl("txtsoluong");
            if (Convert.ToInt32(txtsl.Text) > 0)
                dt = gh.capNhatlai(dt, int.Parse(txtsl.Text), gr.Cells[1].Text);
            else
                dt = gh.xoaDong(dt, gr.Cells[1].Text);
        }
        GridView1.DataSource = dt;
        GridView1.DataBind();
        Session["GioHang"] = dt;
    }
    protected void deleteitem(object sender, CommandEventArgs e)
    {
        Carts gh = new Carts();
        DataTable tb = (DataTable)Session["GioHang"];
        tb = gh.xoaDong(tb, e.CommandArgument.ToString());
        GridView1.DataSource = tb;
        GridView1.DataBind();
        Session["GioHang"] = tb;
    }
    protected void ContBuy_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Products.aspx");
    }
    protected void Buy_Click(object sender, EventArgs e)
    {
        Carts gh = new Carts();
        DataTable dt = (DataTable)Session["GioHang"];
        foreach (GridViewRow gr in GridView1.Rows)
        {
            TextBox txtsl = (TextBox)gr.FindControl("txtsoluong");
            TextBox txtmsp = (TextBox)gr.FindControl("txtmasp");
            string idmsp = txtmsp.Text;
            Buy.Text = idmsp;
        }
    }
}
