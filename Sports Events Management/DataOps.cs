using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Sports_Events_Management
{
    public class DataOps
    {
        // public static System.Configuration.ConnectionStringSettingsCollection ConnectionStrings { get; }
        string connectionString = ConfigurationManager.ConnectionStrings["Sports_Events_ManagementConnectionString"].ConnectionString;
        // string connectionString = "Data Source=DESKTOP-GVQ0C1F\DIPUSQLSERVER;Initial Catalog=inpatient_admission;Integrated Security=True";
        public DataTable GetData(string query)      //reads/take/show data
        {
            SqlConnection conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(query, conn);       //takes data and closes DB
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int executionquery(string query)
        {
            SqlConnection conn = new SqlConnection(connectionString);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }

            SqlCommand cmd = new SqlCommand(query, conn);
            try
            {
                cmd.ExecuteNonQuery();
                return 1;
            }
            catch
            {
                return 0;
            }
        }


    }

}
