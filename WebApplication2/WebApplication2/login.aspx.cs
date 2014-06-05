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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CrearUsuario.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("SELECT id_usuario FROM usuario WHERE nombre = @nombre AND contrasena = @contrasena", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@nombre", user.Text);
            sql.Parameters.AddWithValue("@contrasena", pass.Text);
            conn.Open();
            int id_usuario = Convert.ToInt32(sql.ExecuteScalar());
            Session["id_usuario"] = id_usuario;
                        
            Response.Redirect("Inicio.aspx");
            
        }
    }
}