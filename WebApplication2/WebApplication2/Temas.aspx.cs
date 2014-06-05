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
    public partial class Temas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarTema.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["id_tema"] = id_tema.Text;
            Response.Redirect("ComentarTema.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("DELETE FROM tema WHERE id_tema = @id_tema", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@id_tema", id_tema.Text);

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("Temas.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("BuzonEntrada.aspx");
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int id_usuario2 = (int)(Session["id_usuario"]);
            int id_usuario3 = int.Parse(id_usuario.Text);


            if (id_usuario2 == id_usuario3)
            {
                Session["id_usuario2"] = id_usuario.Text;
                Response.Redirect("VerPerfilEditable.aspx");
            }
            else
            {
                Session["id_usuario2"] = id_usuario.Text;
                Response.Redirect("VerPerfil.aspx");
            }

        }
    }
}