using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


    public class Connection
    {
        public static string Connec = "server=NGOCTHANG-PC;uid=sa;pwd=123456;database=TNTCOMPUTER";
    }

    public class LoginAdmin
    {
        public static String[] Kiemtra(string user, string pass)
        {
            String[] str = new String[3] { "","",""};
            SqlConnection conn = new SqlConnection(Connection.Connec);
            SqlCommand cmd = new SqlCommand("LoginSys", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", pass);
            SqlDataReader dreader;
            conn.Open();
            dreader = cmd.ExecuteReader();
            if (dreader.Read())
            {

                str[0] = dreader.GetValue(0).ToString();
                str[1] = dreader.GetValue(1).ToString();
                str[2] = dreader.GetValue(2).ToString();
            }
            
            conn.Close();
            return str;
        }
    }
    public class QueryAdmin
    {
        public static string NSP(int id)
        {
            string str = "";
            SqlConnection conn = new SqlConnection(Connection.Connec);
            SqlCommand cmd = new SqlCommand("A_NhomSP_Edit_Select", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dreader;
            conn.Open();
            dreader = cmd.ExecuteReader();
            if (dreader.Read())
            {
                str = dreader.GetValue(0).ToString();
            }
            conn.Close();
            return str;
        }
        public static String[] Tintuc(int id)
        {
            String[] str = new String[3] { "", "", "" };
            SqlConnection conn = new SqlConnection(Connection.Connec);
            SqlCommand cmd = new SqlCommand("A_News_Edit_Select", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dreader;
            conn.Open();
            dreader = cmd.ExecuteReader();
            if (dreader.Read())
            {
                str[0] = dreader.GetValue(0).ToString();
                str[1] = dreader.GetValue(1).ToString();
                str[2] = dreader.GetValue(2).ToString();
            }
            conn.Close();
            return str;
        }
        public static String[] Sanpham(int id)
        {
            String[] str = new String[6] { "", "", "", "", "", "" };
            SqlConnection conn = new SqlConnection(Connection.Connec);
            SqlCommand cmd = new SqlCommand("A_SanPham_Edit_Select", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dreader;
            conn.Open();
            dreader = cmd.ExecuteReader();
            if (dreader.Read())
            {
                str[0] = dreader.GetValue(0).ToString();
                str[1] = dreader.GetValue(1).ToString();
                str[2] = dreader.GetValue(2).ToString();
                str[3] = dreader.GetValue(3).ToString();
                str[4] = dreader.GetValue(4).ToString();
                str[5] = dreader.GetValue(5).ToString();
            }
            conn.Close();
            return str;
        }
        public static String[] User(int id)
        {
            String[] str = new String[9] { "", "", "", "", "", "", "", "", "" };
            SqlConnection conn = new SqlConnection(Connection.Connec);
            SqlCommand cmd = new SqlCommand("A_PersonalInfor", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dreader;
            conn.Open();
            dreader = cmd.ExecuteReader();
            if (dreader.Read())
            {
                str[0] = dreader.GetValue(0).ToString();
                str[1] = dreader.GetValue(1).ToString();
                str[2] = dreader.GetValue(2).ToString();
                str[3] = dreader.GetValue(3).ToString();
                str[4] = dreader.GetValue(4).ToString();
                str[5] = dreader.GetValue(5).ToString();
                str[6] = dreader.GetValue(6).ToString();
                str[7] = dreader.GetValue(7).ToString();
                str[8] = dreader.GetValue(8).ToString();
            }
            conn.Close();
            return str;
        }
    }
    public class LoginCus
    {
        public static String[] Kiemtra(string user, string pass)
        {
            String[] str = new String[3] { "","",""};
            SqlConnection conn = new SqlConnection(Connection.Connec);
            SqlCommand cmd = new SqlCommand("CusLogin", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@pass", pass);
            SqlDataReader dreader;
            conn.Open();
            dreader = cmd.ExecuteReader();
            if (dreader.Read())
            {

                str[0] = dreader.GetValue(0).ToString();
                str[1] = dreader.GetValue(1).ToString();
                str[2] = dreader.GetValue(2).ToString();
            }
            
            conn.Close();
            return str;
        }
    }