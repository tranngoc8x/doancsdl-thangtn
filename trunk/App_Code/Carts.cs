using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Data.OleDb;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Collections.Generic;

public class Carts
{
    DataTable dt;
    public Carts()
	{
        dt = new DataTable();
        dt.Columns.Add("AnhSP");
        dt.Columns.Add("TenSP");
        dt.Columns.Add("SoLuong");
        dt.Columns.Add("Gia");
        dt.Columns.Add("TongGia");       
        dt.Columns.Add("masp");
        dt.Columns.Add("giamgia");
	}

    public DataTable  setTable()
    {
        return this.dt;
    }

    public DataTable dienVaoBang(DataTable tb, string Anh, string TenSP, double soluong, double gia, string masp, double giamgia)
    {
        if (tb.Rows.Count != 0)
        {
            bool kiemtra = false;
            foreach (DataRow dr in tb.Rows)
            {
                if (dr[1].ToString().Equals(TenSP))
                {
                    dr[2] = Convert.ToDouble(dr[2].ToString()) + 1;
                    dr[4] = Convert.ToDouble(dr[2].ToString()) * (gia-giamgia);
                    kiemtra = true;
                }
            }
            if (!kiemtra)
            {
                DataRow dr = tb.NewRow();
                dr[0] = Anh;
                dr[1] = TenSP;
                dr[2] = soluong;
                dr[3] = gia;
                dr[4] = (gia - giamgia) * soluong;
                dr[5] = masp;
                dr[6] = giamgia;
                tb.Rows.Add(dr);
            }
        }
        else
        {
            DataRow dr = tb.NewRow();
            dr[0] = Anh;
            dr[1] = TenSP;
            dr[2] = soluong;
            dr[3] = gia;
            dr[4] = (gia - giamgia) * soluong;
            dr[5] = masp;
            dr[6] = giamgia;
            tb.Rows.Add(dr);
        }
        return tb;
    }

    public DataTable xoaDong(DataTable tb, string tensp)
    {
        foreach (DataRow dr in tb.Rows)
        {
            if (dr[1].ToString().Equals(tensp))
            {
                tb.Rows.Remove(dr);
                break;
            }
        }
        return tb;
    }

    public DataTable capNhatlai(DataTable tb, double soluong, string tensp)
    {
        DataTable td = tb;
        foreach (DataRow dr in td.Rows)
        {
            if (tensp.Trim().Equals(dr[1].ToString().Trim()))
            {
                dr[2] = soluong;
                dr[4] = (double.Parse(dr[3].ToString()) - double.Parse(dr[6].ToString())) * soluong;
            }
        }
        return td;
    }
    public SqlConnection conn;

    public string connectdata()
    {
        string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["TNTCOMPUTERConnectionString"].ToString();

        conn = new SqlConnection(connectionString);
        try
        {
            if (conn.State != ConnectionState.Open)
            {
                conn.Open();
            }

            return "true";
        }
        catch (Exception ex)
        {
            return ex.Message;
        }
        finally
        {
            //  conn.Close();
        }

    }

    public DataTable Gettable(string sql, string nameTable)
    {

        DataTable tblGet = new DataTable();
        try
        {

            if (connectdata() == "true")
            {

                SqlDataAdapter da = new SqlDataAdapter(sql, conn);
                DataSet ds = new DataSet();
                da.Fill(ds, nameTable);
                tblGet = ds.Tables[nameTable];
            }
            return tblGet;
        }
        catch (SqlException e)
        {
            return tblGet;
            
        }
        finally
        {
            conn.Close();
        }
    }
    //public int order()
    //{
    //    int maorder = 0;
    //    Session["cid"]=1;
    //    SqlConnection conn = new SqlConnection(Connection.Connec);
    //    SqlCommand cmd = new SqlCommand("AddNewOrder", conn);
    //    cmd.CommandType = CommandType.StoredProcedure;
    //    cmd.Parameters.AddWithValue("@makhach", Session["cid"]);
    //    cmd.Parameters.AddWithValue("@tongtien", pass);
    //    cmd.Parameters.AddWithValue("@note", pass);
    //    SqlDataReader dreader;
    //    conn.Open();
    //    dreader = cmd.ExecuteReader();
    //    if (dreader.Read())
    //    {
    //        maorder = dreader.GetValue(0);
    //    }
    //    conn.Close();
    //    return maorder;

    //}
}
