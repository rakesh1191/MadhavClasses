using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Madhav_Classes
{
    class MainClass
    {
        //Declaration
        public static String databaseLocation = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Milin Joshi\documents\visual studio 2015\Projects\Madhav_Classes\Madhav_Classes\App_Data\madhavclasses.mdf;Integrated Security=True";
        public static SqlCommand cmd;
        public static SqlDataAdapter adp;
        public static DataTable dt;
        public static SqlConnection con;

        //Connect to Database
        public static void connect()
        {

            try
            {

                //Clean
                con = null;

                //Process
                con = new SqlConnection(databaseLocation);
                con.Open();

            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine(ex.ToString());
            }

        }

        //Insert Data
        public static String insert(String sql)
        {

            //Clean
            cmd = null;

            //Connect
            connect();

            //Process
            cmd = new SqlCommand(sql, con);
            cmd.ExecuteNonQuery();

            //Disconnect
            disconnect();

            return "Insert Successful";

        }

        //Retrieve Data
        public static DataTable getData(String sql)
        {

            //Clean
            dt = null;
            adp = null;

            //Process
            connect();

            dt = new DataTable();
            adp = new SqlDataAdapter(sql, con);
            adp.Fill(dt);

            disconnect();

            return dt;
        }

        public static void disconnect()
        {
            try { con.Close(); }
            catch (Exception ex) { System.Diagnostics.Debug.WriteLine(ex.ToString()); }
            finally
            { con.Close(); }
        }
    }
}
