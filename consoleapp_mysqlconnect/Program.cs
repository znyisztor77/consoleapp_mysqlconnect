using System;
using System.Collections.Generic;
using System.Data;
//using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace consoleapp_mysqlconnect
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "server=localhost;uid=root;" + "password=;database=szerszamok"; 

            // Adatbázis elérése
            using (var connection = new MySqlConnection(connectionString))
            {
                try
                {
                connection.Open();
                string query = "SELECT * FROM szerszamok";
                var cmd = new MySqlCommand(query, connection);
                var reader = cmd.ExecuteReader();

                // Adatok kiírása
                while (reader.Read())
                {
                    Console.WriteLine("{0} - {1} - {2} db - {3} Ft",
                        reader["szeszamid"], reader["megnevezes"], reader["darabszam"], reader["egysegar"]);
                }
                Console.ReadKey();

                }
                catch (MySqlException ex)
                {

                    Console.WriteLine("Hiba az adatbázishoz való kapcsolódás során: {0}", ex.Message);
                    Console.ReadLine();                }
                finally
                {
                    // Biztosítja a kapcsolat lezárását kivétel esetén is
                    if (connection.State == ConnectionState.Open)
                    {
                        connection.Close();
                    }
                }
            }



        }
    }
}
