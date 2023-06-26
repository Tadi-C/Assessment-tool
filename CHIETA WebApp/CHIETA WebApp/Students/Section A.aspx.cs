using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.UI;
using Newtonsoft.Json;

namespace CHIETA_WebApp.Students
{
    public partial class Section_A : System.Web.UI.Page
    {
        public static List<string> Questions = new List<string>();
        public static List<string> Questions_IDs = new List<string>();
        public static List<string> Option1 = new List<string>();
        public static List<string> Option2 = new List<string>();
        public static List<string> Option3 = new List<string>();
        public static List<string> Option4 = new List<string>();
        int count = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "RadioButtonScript", "SetRadioButtonsFromSession();", true);

            if (!IsPostBack)
            {
                if (Session["TargetTime"] == null) // Check if session variable exists
                {
                    // Calculate the target time (60 minutes from now)
                    DateTime targetTime = DateTime.Now.AddMinutes(60);

                    // Store the target time in a session variable
                    Session["TargetTime"] = targetTime;
                }
            }

            Questions.Clear();
            Questions_IDs.Clear();
            Option1.Clear();
            Option2.Clear();
            Option3.Clear();
            Option4.Clear();
            SqlConnection conn = new SqlConnection(DBmethods.connectionString);
            string cmdText = $"select Question_ID, Question_Text, Question_Option1, Question_Option2, Question_Option3, Question_Option4 from Question where Section_ID = 'A'";

            SqlDataReader reader = null;

            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {
                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Questions_IDs.Add(reader.GetString(0));
                    Questions.Add(reader.GetString(1));
                    Option1.Add(reader.GetString(2));
                    Option2.Add(reader.GetString(3));
                    Option3.Add(reader.GetString(4));
                    Option4.Add(reader.GetString(5));
                    count++;
                }
            }
            conn.Close();

            int Count = count;
            List<Question> questions = GetQuestions(Count);

            divRepeater.DataSource = questions;
            divRepeater.DataBind();

            ClientScript.RegisterStartupScript(this.GetType(), "RadioButtonScript", "SetRadioButtonsFromSession();", true);
        }

        private static List<Question> GetQuestions(int count)
        {
            List<Question> questions = new List<Question>();

            for (int i = 0; i < count; i++)
            {
                string questionNumber = $"Question {i + 1}";
                string question = Questions[i];
                string option1 = Option1[i];
                string option2 = Option2[i];
                string option3 = Option3[i];
                string option4 = Option4[i];

                Question q = new Question
                {
                    QuestionNumber = questionNumber,
                    QuestionText = question,
                    Option1 = option1,
                    Option2 = option2,
                    Option3 = option3,
                    Option4 = option4
                };

                questions.Add(q);
            }

            return questions;
        }


        public class Question
        {
            public string QuestionNumber { get; set; }
            public string QuestionText { get; set; }
            public string Option1 { get; set; }
            public string Option2 { get; set; }
            public string Option3 { get; set; }
            public string Option4 { get; set; }
        }

    }
}
