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

        public static List<string> RowsNames = new List<string>();
        public int columnNamesCount = 0;
        public int rowNamesCount = 0;
        public static List<string> ColumnNames = new List<string>();
        public static List<object> tables = new List<object>();
        public static List<Answers> answers = new List<Answers>();


        public static List<int> Rows = new List<int>();
        public static List<int> Columns = new List<int>();

        protected void Page_Load(object sender, EventArgs e)
        {
            RowsNames.Clear(); ColumnNames.Clear();
            



            if (!IsPostBack)
            {

                
                //}
                var tablesData = new List<object>();

                for (int i = 0; i < 0; i++)
                {
                    tablesData.Add(new { Rows = Rows[i], Columns = Columns[i] });
                }

                tables.Add(GenerateTableQueries("Question_13"));

                tables.Add(GenerateTableQueries("QUESTION_16"));
                

                tableRepeater.DataSource = tables;
                tableRepeater.DataBind();
            }
        }

        //, int rows, int columns
        public string GenerateTable(int questionNumber, string questionText, int rows, int columns,object NamesOfRows, object NamesOfCloumns)
        {

            List<string> Rownames = (List<string>)NamesOfRows;
            List<string> ColumnNames = (List<string>)NamesOfCloumns;
            //foreach(object table in tables)
            var tableHtml = "<tr>";

            // Generate the table header row with question number
            tableHtml += "<label>Question " + (questionNumber + 1) + "</label><br />";
            
            tableHtml += "<label>" + questionText + "</label><br />";
            tableHtml += "<table>";
            /*tableHtml += "<th></th>"; */// Empty cell for the top-left corner

            for (int j = 0; j < columns; j++)
            {
                string colName = ColumnNames[j].Replace('_', ' ');
                tableHtml += $"<th>{colName}</th>";
            }

            tableHtml += "</tr>";

            for (int i = 0; i < rows; i++)
            {
                tableHtml += "<tr>";

                // Generate the first column with row number
                tableHtml += $"<td>{Rownames[i]}</td>";

                
                // Generate the remaining cells (empty)
                for (int j = 0; j < columns-1; j++)
                {

                    tableHtml += "<td><input type='text' id='table-" + questionNumber + 1 + "-row-" + (i + 1) + "-col-" + (j + 1) + "' class='table-input' /></td>";
                    
                }

                tableHtml += "</tr>";
            }                      

            return tableHtml;
        }

        public class Tables
        {
            public string questionText { get; set; }
            public int Rows  {get; set;} 
            public int Columns { get; set;}
            public List<string> RowNames { get; set;}
            public List<string> ColNames { get;set;}
        }

        public class Answers 
        { 
            public string TextBoxID { get; set; }
            public string Answertext { get; set; }
        }

        public Tables GenerateTableQueries(string tableName)
        {
            Tables table = new Tables();
            
            List<string> columnNames = new List<string>();
            List<string> rowNames = new List<string>();

            SqlConnection conn = new SqlConnection(DBmethods.connectionString);
            string cmdText = $"DECLARE @TableName NVARCHAR(128) = '{tableName}'\r\nDECLARE @ColumnsToExclude NVARCHAR(MAX) = 'Question_ID,Section_ID,ANSWER_ID,QUESTION_MARK,ASSESMENT_ID,Question_Text'\r\nDECLARE @SQL NVARCHAR(MAX)\r\n\r\nSET @SQL = 'SELECT COUNT(*) AS TotalRecords FROM ' + @TableName\r\n\r\nEXEC (@SQL)";
            SqlDataReader reader = null;

            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {

                conn.Open();
                reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    int result = reader.GetInt32(0);
                    //Columns.Add(wow);
                    table.Rows = result;
                }
            }
            conn.Close();

            cmdText = $"DECLARE @TableName NVARCHAR(128) = '{tableName}'\r\nDECLARE @ColumnsToExclude NVARCHAR(MAX) = 'Question_ID,Section_ID,ANSWER_ID,QUESTION_MARK,ASSESMENT_ID,Question_Text'\r\nDECLARE @SQL NVARCHAR(MAX)\r\n\r\nSET @SQL = '\r\n    SELECT COUNT(COLUMN_NAME) AS TotalColumns \r\n    FROM INFORMATION_SCHEMA.COLUMNS \r\n    WHERE TABLE_NAME = ''' + @TableName + ''' \r\n        AND COLUMN_NAME NOT IN (SELECT value FROM STRING_SPLIT(''' + @ColumnsToExclude + ''', '',''))'\r\n\r\nEXEC (@SQL)";
            reader = null;

            using (SqlCommand command = new SqlCommand(cmdText, conn))
            {

                conn.Open();
                reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int result = reader.GetInt32(0);
                    //Rows.Add(wow);
                    table.Columns = result;
                }
            }
            conn.Close();

            cmdText = $"DECLARE @TableName NVARCHAR(128) = '{tableName}'\r\nDECLARE @ColumnsToExclude NVARCHAR(MAX) = 'Question_ID,Section_ID,ANSWER_ID,QUESTION_MARK,ASSESMENT_ID,Question_Text'\r\nDECLARE @SQL NVARCHAR(MAX)\r\n\r\nSET @SQL = '\r\n    SELECT COLUMN_NAME\r\n    FROM INFORMATION_SCHEMA.COLUMNS\r\n    WHERE TABLE_NAME = ''' + @TableName + '''\r\n        AND COLUMN_NAME NOT IN (SELECT value FROM STRING_SPLIT(''' + @ColumnsToExclude + ''', '',''))\r\n'\r\n\r\nEXEC (@SQL)";
            reader=null;

            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string result = reader.GetString(0);
                    columnNames.Add(result);    
                }
            }
            conn.Close();


            cmdText = $"DECLARE @TableName NVARCHAR(128) = '{tableName}'\r\nDECLARE @ColumnsToExclude NVARCHAR(MAX) = 'Question_ID,Section_ID,ANSWER_ID,QUESTION_MARK,ASSESMENT_ID,Question_Text'\r\nDECLARE @SQLCommand NVARCHAR(MAX)\r\n\r\nSET @SQLCommand = 'SELECT '\r\n\r\nSELECT @SQLCommand = @SQLCommand + COLUMN_NAME + ', '\r\nFROM INFORMATION_SCHEMA.COLUMNS\r\nWHERE TABLE_NAME = @TableName\r\n  AND COLUMN_NAME NOT IN (SELECT value FROM STRING_SPLIT(@ColumnsToExclude, ','))\r\n\r\nSET @SQLCommand = LEFT(@SQLCommand, LEN(@SQLCommand) - 1) + ' FROM ' + @TableName\r\n\r\nEXEC (@SQLCommand)";

            reader = null;

            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    string result = reader.GetString(0);
                    rowNames.Add(result);
                }
            }
            conn.Close();
            cmdText = $"select Question_Text from {tableName}";
            reader = null;

            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                reader.Read();
                string result = reader.GetString(0);
                table.questionText = result;
                
            }
            conn.Close();

            table.RowNames = rowNames;
            table.ColNames = columnNames;
           

            return table;


        }
    }
}
