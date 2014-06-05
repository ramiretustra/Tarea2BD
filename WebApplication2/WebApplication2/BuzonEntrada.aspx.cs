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
    public partial class BuzonEntrada : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            System.Data.SqlClient.SqlConnection conn;
            conn = new System.Data.SqlClient.SqlConnection();
            conn.ConnectionString = "Data Source=Machi-PC;Initial Catalog=Foro;Integrated Security=True";

            SqlCommand sql = new SqlCommand("UPDATE mensaje_privado SET leido = 1 WHERE id_mensaje = @id_mensaje", conn);
            sql.CommandType = CommandType.Text;
            sql.Parameters.AddWithValue("@id_mensaje", id_mensaje.Text);
            Session["id_mensaje"] = id_mensaje.Text;

            conn.Open();
            sql.ExecuteNonQuery();
            Response.Redirect("LeerMensaje.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("RedactarMensaje.aspx");
        }
    }
}