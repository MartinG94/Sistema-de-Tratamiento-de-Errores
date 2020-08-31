using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient; // Conector con el SQL
using System.Data;

namespace AppClase.Clases
{
    class Be_BaseDatos
    {
        SqlConnection Conexion = new SqlConnection(); // Instanciando un objeto llamado conexion de tipo SqlConnection
        SqlCommand Cmd = new SqlCommand();

        private void Conectar()
        {
            Conexion.ConnectionString = "Data Source=DESKTOP-514P6I4\\SQLEXPRESS;Initial Catalog=_TRATAMIENTO_ERRORES;Integrated Security=True";
            Conexion.Open();
            Cmd.Connection = Conexion;
            Cmd.CommandType = System.Data.CommandType.Text;
        }

        public DataTable Consulta (string sql) // El método consulta devuelve una Tabla
        {
            Conectar();
            Cmd.CommandText = sql;
            DataTable tabla = new DataTable();
            tabla.Load(Cmd.ExecuteReader());
            return tabla;
        }
    }
}
