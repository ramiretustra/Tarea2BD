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
    public partial class CrearUsuario : System.Web.UI.Page
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
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("INSERT INTO usuario(nombre,contrasena,avatar_url,fecha_nacimiento,sexo,fecha_registro) VALUES(@nombre,@contrasena,@avatar_url,@fecha_nacimiento,@sexo,@fecha_registro)", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@nombre", user.Text);
            sql.Parameters.AddWithValue("@contrasena", pass1.Text);
            sql.Parameters.AddWithValue("@avatar_url", avatar.Text);
            sql.Parameters.AddWithValue("@fecha_nacimiento", dob.Text);
            sql.Parameters.AddWithValue("@sexo", sexo.Text);
            sql.Parameters.AddWithValue("@fecha_registro",  System.DateTime.Now.ToShortDateString());


            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("login.aspx");


        }
    }
}