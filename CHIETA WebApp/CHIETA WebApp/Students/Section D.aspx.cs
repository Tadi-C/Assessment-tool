using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CHIETA_WebApp
{
    public partial class Section_D : System.Web.UI.Page
    {
        public static List<int> Rows = new List<int>();
        public static List<int> Columns = new List<int>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Rows.Clear(); Columns.Clear();
            SqlConnection conn = new SqlConnection(DBmethods.connectionString);
            string cmdText = $"SELECT count(*) FROM information_schema.columns WHERE table_name = 'QUESTION_13';";
            SqlDataReader readColumn = null;


           
            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {

                conn.Open();
                readColumn = cmd.ExecuteReader();

                while (readColumn.Read())
                {
                    int wow = readColumn.GetInt32(0);
                    Columns.Add(readColumn.GetInt32(0));
                }
            }
            conn.Close();

            Rows.Clear(); Columns.Clear();
            SqlConnection connection = new SqlConnection(DBmethods.connectionString);
            string commandText = $"SELECT count(*) FROM QUESTION_13;";
            SqlDataReader readRow = null;



            using (SqlCommand command = new SqlCommand(commandText, connection))
            {

                connection.Open();
                readRow = command.ExecuteReader();
                while (readRow.Read())
                {
                    int wow = readRow.GetInt32(0);
                    Rows.Add(readRow.GetInt32(0));
                }
            }
            conn.Close();

            //int one = Rows[0];
            //int two = Columns[0];


            if (!IsPostBack)
            {
                // Define the data for tables
                var tablesData = new[]
                {
                    new { Rows = Rows[0], Columns = Columns[0] },                    
                };

                tableRepeater.DataSource = tablesData;
                tableRepeater.DataBind();
            }
        }

        public string GenerateTable(int questionNumber, int rows, int columns)
        {
            var tableHtml = "<tr>";

            // Generate the table header row with question number
            tableHtml += "<label>Question " + questionNumber + "</label><br />";
            tableHtml += "<table>";
            tableHtml += "<th></th>"; // Empty cell for the top-left corner

            for (int j = 0; j < columns; j++)
            {
                tableHtml += "<th>Column " + (j + 1) + "</th>";
            }

            tableHtml += "</tr>";

            for (int i = 0; i < rows; i++)
            {
                tableHtml += "<tr>";

                // Generate the first column with row number
                tableHtml += "<td>Row " + (i + 1) + "</td>";

                // Generate the remaining cells (empty)
                for (int j = 0; j < columns; j++)
                {
                    tableHtml += "<td><input type='text' id='table-" + questionNumber + "-row-" + (i + 1) + "-col-" + (j + 1) + "' class='table-input' /></td>";
                }

                tableHtml += "</tr>";
            }

            return tableHtml;
        }
    }
}
