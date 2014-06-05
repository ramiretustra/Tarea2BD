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
    public partial class RedactarMensaje : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuzonEntrada.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql2 = new SqlCommand("SELECT id_buzon FROM buzon_entrada WHERE id_usuario = @id_usuario", conn);
            sql2.Parameters.AddWithValue("@id_usuario", id_usuario.Text);

            SqlCommand sql = new SqlCommand("INSERT INTO mensaje_privado(id_remitente, id_buzon, leido, mensaje, fecha_de_envio) VALUES(@id_remitente, @id_buzon, 0, @mensaje, @fecha_de_envio)", conn);
            sql.CommandType = CommandType.Text;
            int id_usuario2 = (int)(Session["id_usuario"]);
            sql.Parameters.AddWithValue("@id_remitente", id_usuario2);
            sql.Parameters.AddWithValue("@mensaje", mensaje.Text);
            sql.Parameters.AddWithValue("@fecha_de_envio", System.DateTime.Now.ToShortDateString());



            conn.Open();
            int id_buzon = Convert.ToInt32(sql2.ExecuteScalar());
            sql.Parameters.AddWithValue("@id_buzon", id_buzon);
            sql.ExecuteNonQuery();
            Response.Redirect("BuzonEntrada.aspx");
        }
    }
}