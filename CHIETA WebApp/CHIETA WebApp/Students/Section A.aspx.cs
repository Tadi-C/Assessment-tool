using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;


namespace CHIETA_WebApp.Students
{
    public partial class Section_A : System.Web.UI.Page
    {

        public static List<string> Questions = new List<string>();
        int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            Questions.Clear();
            SqlConnection conn = new SqlConnection(DBmethods.connectionString);
            string cmdText = $"select Question_Text from Question where Section_ID = 'A'  ";

            SqlDataReader reader = null;


            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {

                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Questions.Add(reader.GetString(0));
                    count++;
                }
            }
            conn.Close();

            int Count = count;
            List<Question> questions = GetQuestions(Count);

            divRepeater.DataSource = questions;
            divRepeater.DataBind();
        }

        private static List<Question> GetQuestions(int count)
        {
            List<Question> questions = new List<Question>();

            for (int i = 0; i < count; i++)
            {
                string questionNumber = $"Question {i + 1}";
                string question = Questions[i];

                Question q = new Question
                {
                    QuestionNumber = questionNumber,
                    QuestionText = question
                };

                questions.Add(q);
            }

            return questions;
        }

        public class Question
        {
            public string QuestionNumber { get; set; }
            public string QuestionText { get; set; }
            public List<string>  Options { get; set; }
    }
    }
}