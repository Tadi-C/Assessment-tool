using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CHIETA_WebApp
{
    public partial class Section_D : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Define the data for tables
                var tablesData = new[]
                {
                    new { Rows = 3, Columns = 4 },
                    new { Rows = 2, Columns = 3 },
                    new { Rows = 5, Columns = 2 },
                    new { Rows = 6, Columns = 9 },
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
