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
    public partial class ComentarTema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("INSERT INTO comentario(id_tema, id_usuario, mensaje) VALUES(@id_tema,@id_usuario,@mensaje)",conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@mensaje", comentario.Text);
            

            int id_usuario = (int)(Session["id_usuario"]);
            sql.Parameters.AddWithValue("@id_usuario", id_usuario);

            string id_tema = (string)(Session["id_tema"]);
            int id_tema_int = int.Parse(id_tema);
            sql.Parameters.AddWithValue("@id_tema", id_tema);

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("ComentarTema.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Temas.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("UPDATE comentario SET mensaje = @mensaje where id_comentario = @id_comentario", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@mensaje", comentario.Text);
            sql.Parameters.AddWithValue("@id_comentario", id_comentariouser.Text);

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("ComentarTema.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("DELETE FROM comentario WHERE id_comentario = @id_comentario", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@id_comentario", id_comentariouser.Text);

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("ComentarTema.aspx");
        }
    }
}