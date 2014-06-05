using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["id_categoria"] = id_categoria.Text;
            Response.Redirect("Temas.aspx?id_categoria = " + id_categoria.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("DELETE FROM categoria WHERE id_categoria = @id_categoria", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@id_categoria", id_categoria.Text);

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("Inicio.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("SELECT id_buzon FROM buzon_entrada WHERE id_usuario = @id_usuario", conn);
            int id_usuario = (int)(Session["id_usuario"]);
            sql.Parameters.AddWithValue("@id_usuario", id_usuario);

            conn.Open();
            int id_buzon = Convert.ToInt32(sql.ExecuteScalar());
            Session["id_buzon"] = id_buzon;
            Response.Redirect("BuzonEntrada.aspx?id_buzon="+id_buzon);
        }
    }
}