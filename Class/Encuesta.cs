using Examen2_Programacion_II.Class;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Security.Claims;

namespace Examen3_LuisChavesMora.Class
{
    public class Encuesta
    {

        public string nombre { get; set; }
        public string edad { get; set; }
        public string correo { get; set; }
        public int idpartido { get; set; }
        public Encuesta(string Nombre, string Edad, string Correo, int IDPartido)
        {
            nombre = Nombre;
            edad = Edad;
            correo = Correo;
            idpartido = IDPartido;
        }
        public Encuesta(string Edad, string Correo, int IDPartido)
        {
            edad = Edad;
            correo = Correo;
            idpartido = IDPartido;
        }
        public Encuesta(string Correo, int IDPartido)
        {
            correo = Correo;
            idpartido = IDPartido;
        }
        public Encuesta(int IDPartido)
        {
            idpartido = IDPartido;
        }
        public Encuesta() { }

        public static int IngresarEncuesta(string nombre, string edad, string correo, int idpartido)
        {
            int retorno = 0;

            SqlConnection Conn = new SqlConnection();
            try
            {
                using (Conn = DBConn.obtenerConexion())
                {
                    SqlCommand cmd = new SqlCommand("IngresarEncuesta", Conn)
                    {
                        CommandType = CommandType.StoredProcedure
                    };
                    cmd.Parameters.Add(new SqlParameter("@NombreCompleto", nombre));
                    cmd.Parameters.Add(new SqlParameter("@Edad", edad));
                    cmd.Parameters.Add(new SqlParameter("@Correo", correo));
                    cmd.Parameters.Add(new SqlParameter("@IDPartido", idpartido));


                    retorno = cmd.ExecuteNonQuery();
                }
            }
            catch (System.Data.SqlClient.SqlException ex)
            {
                retorno = -1;
            }
            finally
            {
                Conn.Close();
            }

            return retorno;
        }// fin metdodo
    }// fin clase
}// fin namespace