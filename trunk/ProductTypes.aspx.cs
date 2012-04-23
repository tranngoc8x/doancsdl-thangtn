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

public partial class ProductTypes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
     protected void btn_AddToCart_Click(object sender, CommandEventArgs e)
    {
        int lb = 0;
        lb = Convert.ToInt32(e.CommandArgument);
        Carts gh = new Carts();
        DataTable dt;
        if (Session["GioHang"] == null)
            dt = gh.setTable();
        else
            dt = (DataTable)Session["GioHang"];
        //Response.Write(lb);
        string str = "select * from SanPham where MaSP=N'" + lb + "'";
        DataTable dt2 = new DataTable();
        dt2 = gh.Gettable(str, "SanPham");
        foreach (DataRow dr in dt2.Rows)
        {
            dt = gh.dienVaoBang(dt, dr["AnhSP"].ToString(), dr["TenSP"].ToString(), 1, Convert.ToDouble(dr["DonGia"]), dr["MaSP"].ToString(), Convert.ToDouble(dr["Giamgia"]));
            Session["GioHang"] = dt;
        }
    }
}