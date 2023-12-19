using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Examen3_LuisChavesMora
{
    public partial class Encuesta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //LlenarPartido();
        }
        public void alertas(String texto)
        {
            string message = texto;
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            sb.Append("<script type = 'text/javascript'>");
            sb.Append("window.onload=function(){");
            sb.Append("alert('");
            sb.Append(message);
            sb.Append("')};");
            sb.Append("</script>");
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

        }

        protected void btnIngresarEncuesta(object sender, EventArgs e)
        {
            int resultado = Class.Encuesta.IngresarEncuesta(tNombreCompleto.Text, tEdad.Text, tEmail.Text, int.Parse(tPartido.Text));
            if (resultado > 0)
            {
                alertas("Encuesta ingresada con exito");
                tNombreCompleto.Text = string.Empty;
                tEdad.Text = string.Empty;
                tEmail.Text = string.Empty;
                tPartido.Text = string.Empty;
            }
            else
            {
                alertas("Error al ingresar Encuesta");

            }
        }
    }// fin clase
}// fin namespace