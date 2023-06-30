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
        //true and false lists
        public static List<string> Questions = new List<string>();
        public static List<string> Questions_IDs = new List<string>();
        public static List<List<string>> Options = new List<List<string>>();
        public List<Question> qs = new List<Question>();
        public int count = 0;

        //Select X Questions
        int selectXcount = 0;
        public static List<string> SelectXQuestions = new List<string>();
        public static List<string> SelectXQuestions_IDs = new List<string>();
        public static List<List<string>> SelectXOptions = new List<List<string>>();
        public List<SelectXQuestion> sXqs = new List<SelectXQuestion>();

        
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //Clearing all the lists on load
            Questions.Clear();
            Questions_IDs.Clear();
            Options.Clear();
            SelectXQuestions.Clear();
            SelectXQuestions_IDs.Clear();
            SelectXOptions.Clear();
            qs.Clear();
            sXqs.Clear();

            SqlConnection conn = new SqlConnection(DBmethods.connectionString);
            string cmdText = $"select Question_ID, Question_Text from Question where Section_ID = 'B' and Question_ID not like '%.%' and Question_ID like '{DBmethods.paperNumber}%'  ";
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
                string commandText = $"select Question_ID, Question_Text from Question where Section_ID = 'B' and Question_ID like '{item}.%' and Question_ID like '{DBmethods.paperNumber}%' ";
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
            

            
            SqlConnection connectionX = new SqlConnection(DBmethods.connectionString);
            string commandX = $"select Question_ID, Question_Text from Question where Section_ID = 'F' and Question_ID not like '%.%' and Question_ID like '{DBmethods.paperNumber}%' ";
            SqlDataReader readX = null;
            using (SqlCommand sql = new SqlCommand(commandX, connectionX)) 
            {
                connectionX.Open();
                readX = sql.ExecuteReader();
                while (readX.Read())
                {
                    SelectXQuestions_IDs.Add(readX.GetString(0));
                    SelectXQuestions.Add(readX.GetString(1));
                    selectXcount++;
                }
            }
            connectionX.Close();

            int selectXQuestionCount = 0;
            foreach (string x in SelectXQuestions_IDs) 
            {
                SqlConnection connectionXoption = new SqlConnection(DBmethods.connectionString);
                string commandXoption = $"select Question_ID, Question_Text from Question where Section_ID = 'F' and Question_ID like '{x}.%' and Question_ID like '{DBmethods.paperNumber}%' ";
                SqlDataReader readXoption = null;
                using (SqlCommand sqlCommand = new SqlCommand(commandXoption, connectionXoption))
                {
                    connectionXoption.Open();
                    readXoption = sqlCommand.ExecuteReader();
                    List<string> list = new List<string>();
                    while (readXoption.Read())
                    {
                        list.Add(readXoption.GetString(1));
                        selectXQuestionCount++;
                    }
                    SelectXOptions.Add(list);
                }
                connectionXoption.Close();
            }
            
            qs = GetQuestions(count);
            Repeater1.DataSource = qs;
            Repeater1.DataBind();
            
            sXqs = GetSelectXQuestions(selectXcount, count);
            Repeater2.DataSource = sXqs;
            Repeater2.DataBind();


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

        private static List<SelectXQuestion> GetSelectXQuestions(int xcount, int totalCount)
        {
            List<SelectXQuestion> selectXQuestions = new List<SelectXQuestion>();
            for (int i = 0; i < xcount; i++)
            {
                string questionNumber = $"Question {i + totalCount + 1}";
                string question = SelectXQuestions[i];
                List<string> strings = SelectXOptions[i];

                SelectXQuestion sX = new SelectXQuestion
                {
                    QuestionNumber = questionNumber,
                    QuestionText = question,
                    Options = strings
                    
                };
                selectXQuestions.Add(sX);
               
            }
            return selectXQuestions;
        }



        public class Question
        {
            public string QuestionNumber { get; set; }
            public string QuestionText { get; set; }
            public List<string> Options { get; set; }

        }

        protected void ItemBound(object sender, RepeaterItemEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {
                
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

        protected void ItenBoundX(object sender, RepeaterItemEventArgs args)
        {
            if (args.Item.ItemType == ListItemType.Item || args.Item.ItemType == ListItemType.AlternatingItem)
            {

                Repeater childRepeater = (Repeater)args.Item.FindControl("OptionsRepeater1");
                List<string> inner = sXqs[args.Item.ItemIndex].Options;
                for (int i = 0; i < selectXcount; i++)
                {
                    //options.Add(qs[i].Options);
                    childRepeater.DataSource = inner;
                    childRepeater.DataBind();
                }
            }
            
        }

        public class SelectXQuestion
        {
            public string QuestionNumber { get; set; }
            public string QuestionText { get; set; }
            public List<string> Options { get; set; }
        }


    }
}