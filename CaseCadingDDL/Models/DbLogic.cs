using Microsoft.Data.SqlClient;

namespace CaseCadingDDL.Models
{
    public class DbLogic
    {
        public SqlConnection sqlConnection { get; set; }
        public DbLogic()
        {
            sqlConnection = new SqlConnection("Data Source=DESKTOP-A9J9S5H;Initial Catalog=CASECADING_DB;Integrated Security=True; TrustServerCertificate=true");
        }
        public List<Entity> GetCountry()
        {
            SqlCommand cmd = new SqlCommand("usp_get_countries",sqlConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            SqlDataReader dr=cmd.ExecuteReader();
            List<Entity> list = new List<Entity>();
            while (dr.Read())
            {
                list.Add(new Entity() { id = Convert.ToInt32(dr[0]), name = dr[1].ToString() });
            }
            sqlConnection.Close();
            return list;
        }
        public List<Entity> GetCity(int id) {
            SqlCommand cmd = new SqlCommand("usp_get_cities", sqlConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            cmd.Parameters.AddWithValue("@id", id);

            SqlDataReader dr = cmd.ExecuteReader();
            List<Entity> list = new List<Entity>();
            while (dr.Read())
            {
                list.Add(new Entity() { id = Convert.ToInt32(dr[0]), name = dr[1].ToString() });
            }
            sqlConnection.Close();
            return list;
        }
        public List<Entity> GetStates(int id) {
            SqlCommand cmd = new SqlCommand("usp_get_states", sqlConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            if (sqlConnection.State == System.Data.ConnectionState.Closed)
            {
                sqlConnection.Open();
            }
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader dr = cmd.ExecuteReader();
            List<Entity> list = new List<Entity>();
            while (dr.Read())
            {
                list.Add(new Entity() { 
                    id = Convert.ToInt32(dr[0]), 
                    name = dr[1].ToString() });
            }
            sqlConnection.Close();
            return list;
        }
    }
}
