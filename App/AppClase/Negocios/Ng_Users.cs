using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AppClase.Clases; // Obtengo información del Back-End
using System.Data;

namespace AppClase.Negocios
{
    class Ng_Users
    {
        public enum Respuesta { validacion_correcta, validacion_incorrecta };

        Be_BaseDatos _BD = new Be_BaseDatos();

        public Respuesta validar_usuario (string usr, string pssw)
        {
            string sql = "";
            sql = "SELECT * FROM Users WHERE n_usuario = '" + usr + "' AND password= '" + pssw + "'";
            DataTable tabla = new DataTable();
            tabla = _BD.Consulta(sql);
            if(tabla.Rows.Count == 0)
            {
                // Decir que no existe ese usuario y password
                return Respuesta.validacion_incorrecta;
            }
            else
            {
                // Se encontró el usuario
                return Respuesta.validacion_correcta;
            }
        } 
    }
}
