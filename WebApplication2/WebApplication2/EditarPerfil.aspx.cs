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
    public partial class EditarPerfil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";
            int id_usuario2 = Convert.ToInt32(Session["id_usuario2"]);
                       
            conn.Open();
            if(!contraseña.Text.Equals(""))
            {
                if (contraseña.Text.Equals(contraseña2.Text))
                {
                    SqlCommand sql = new SqlCommand("UPDATE usuario SET contrasena = @contraseña WHERE id_usuario = @id_usuario", conn);
                    sql.CommandType = CommandType.Text;
                    sql.Parameters.AddWithValue("@contraseña", contraseña.Text);
                    sql.Parameters.AddWithValue("@id_usuario", id_usuario2);
                    sql.ExecuteNonQuery();
                }
            }

            if (!fecha.Text.Equals(""))
            {
                SqlCommand sql = new SqlCommand("UPDATE usuario SET fecha_nacimiento = @fecha WHERE id_usuario = @id_usuario", conn);
                sql.CommandType = CommandType.Text;
                sql.Parameters.AddWithValue("@fecha", fecha.Text);
                sql.Parameters.AddWithValue("@id_usuario", id_usuario2);
                sql.ExecuteNonQuery();
            }

            if (!url.Text.Equals(""))
            {
                SqlCommand sql = new SqlCommand("UPDATE usuario SET avatar_url = @avatar_url WHERE id_usuario = @id_usuario", conn);
                sql.CommandType = CommandType.Text;
                sql.Parameters.AddWithValue("@avatar_url", url.Text);
                sql.Parameters.AddWithValue("@id_usuario", id_usuario2);
                sql.ExecuteNonQuery();
            }

            Response.Redirect("VerPerfilEditable.aspx");
        }
    }
}