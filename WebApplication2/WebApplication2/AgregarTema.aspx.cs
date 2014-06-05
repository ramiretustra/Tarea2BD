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
    public partial class AgregarTema : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("INSERT INTO tema(id_categoria,id_usuario,nombre,descripcion,mensaje,publico) VALUES(@id_categoria,@id_usuario,@nombre,@descripcion,@mensaje,@publico)", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@nombre", nombre.Text);
            sql.Parameters.AddWithValue("@descripcion", descripcion.Text);
            sql.Parameters.AddWithValue("@mensaje", mensaje.Text);
            if (Privada.Checked == true)
            {
                sql.Parameters.AddWithValue("@publico", 0);
            }
            else if (Publica.Checked == true)
            {
                sql.Parameters.AddWithValue("@publico", 1);
            }

            int id_usuario = (int)(Session["id_usuario"]);
            //int id_usuario_int = int.Parse(id_usuario);
            sql.Parameters.AddWithValue("@id_usuario", id_usuario);

            string id_categoria = (string)(Session["id_categoria"]);
            int id_categoria_int = int.Parse(id_categoria);
            sql.Parameters.AddWithValue("id_categoria", id_categoria);       

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("Temas.aspx");
        }
    }
}