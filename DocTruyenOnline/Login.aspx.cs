using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DocTruyenOnline
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DocTruyenOnline"].ConnectionString;
            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("spGet_Users", cnn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        cmd.Parameters.AddWithValue("@username", username.Text);
                        cmd.Parameters.AddWithValue("@password", password.Text);
                        DataTable tbl = new DataTable();
                        da.Fill(tbl);
                        cnn.Open();
                        cmd.ExecuteNonQuery();
                        if (tbl.Rows.Count > 0)
                        {
                            Response.Write("Đăng nhập Ok");

                        }
                        else
                        {
                            Response.Write("Đăng nhập thất bại. Vui lòng thử lại");
                            username.Text = "";
                        }
                    }//da
                }//cmd
            }//cnn
        }
    }
}