using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CHIETA_WebApp.Students
{
    public partial class Section_B : System.Web.UI.Page
    {
        public static List<string> Questions = new List<string>();
        public static List<string> Questions_IDs = new List<string>();
        public static List<List<string>> Options = new List<List<string>>();
        int count = 0;
        int optionsCount = 0;
        public List<Question> qs = new List<Question>();
        //public List<Option> ops = new List<Option>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Questions.Clear();
            Questions_IDs.Clear();
            Options.Clear();
            SqlConnection conn = new SqlConnection(DBmethods.connectionString);
            string cmdText = $"select Question_ID, Question_Text from Question where Section_ID = 'B' and Question_ID not like '%.%'  ";
            SqlDataReader reader = null;
            using (SqlCommand cmd = new SqlCommand(cmdText, conn))
            {

                conn.Open();
                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Questions_IDs.Add(reader.GetString(0));
                    Questions.Add(reader.GetString(1));                    
                    count++;
                }
            }
            conn.Close();

            int QuestionCount = 0;
            foreach (string item in Questions_IDs) 
            {
                SqlConnection connection = new SqlConnection(DBmethods.connectionString);
                string commandText = $"select Question_ID, Question_Text from Question where Section_ID = 'B' and Question_ID like '{item}.%' ";
                SqlDataReader read = null;
                using (SqlCommand cmd = new SqlCommand(commandText, connection))
                {
                    connection.Open();
                    read = cmd.ExecuteReader();
                    List<string> list = new List<string>();
                    while (read.Read())
                    {
                        list.Add(read.GetString(1));
                        QuestionCount++;
                    }
                    Options.Add(list);
                }
                connection.Close();
            }
            qs.Clear();
            qs = GetQuestions(count);
            optionsCount = count;
            
            //{
            //    new Question()
            //    {
            //        QuestionText = "Question 1",
            //        Options = new List<string>() { "Option 1", "Option 2", "Option 3" }
            //    },
            //    new Question()
            //    {
            //        QuestionText = "Question 2",
            //        Options = new List<string>() { "Option A", "Option B", "Option C" }
            //    }
            //};
            

            Repeater1.DataSource = qs;
            Repeater1.DataBind();

            

        }
        private static List<Question> GetQuestions(int count)
        {
            List<Question> questions = new List<Question>();
            for (int i = 0; i < count; i++)
            {
                string questionNumber = $"Question {i + 1}";
                string question = Questions[i];
                List<string> list = Options[i];
                Question q = new Question
                {
                    QuestionNumber = questionNumber,
                    QuestionText = question,
                    Options = list
                };
                questions.Add(q);
            }
            return questions;
        }

        //private static List<Option> GetOptions(int count)
        //{
        //    List<Option> options = new List<Option>();
        //    for (int i = 0; i < count; i++)
        //    {
        //        List<string> option = Options[i];
        //        Option ops = new Option
        //        {
        //            Options = option
        //        };
        //        options.Add(ops);
        //    }
        //    return options;
        //}

        public class Question
        {
            public string QuestionNumber { get; set; }
            public string QuestionText { get; set; }
            public List<string> Options { get; set; }

        }

        //public class Option
        //{
        //    public List<string> Options { get; set; }
        //}

        protected void ItemBound(object sender, RepeaterItemEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                List<List<string>> options = new List<List<string>>();
                Repeater childRepeater = (Repeater)args.Item.FindControl("OptionsRepeater");
                List<string> innerList = qs[args.Item.ItemIndex].Options;
                for (int i = 0; i < count; i++)
                {
                    //options.Add(qs[i].Options);
                    childRepeater.DataSource = innerList;
                    childRepeater.DataBind();
                }
                
                
                
                
            }
        }


    }
}