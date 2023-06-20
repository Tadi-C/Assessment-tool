<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Section B.aspx.cs" Inherits="CHIETA_WebApp.Students.Section_B" %>
<!DOCTYPE html>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>    
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/feather/feather.css"/>
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css"/>
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css"/>
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css"/>
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="js/select.dataTables.min.css"/>
    <link rel="stylesheet" href="../../vendors/mdi/css/materialdesignicons.min.css"/>
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/vertical-layout-light/style.css">
    <link href="Students/css/vertical-layout-light/style.css" rel="stylesheet" />
    <link href="Students/NewStyles/StyleSheet1.css" rel="stylesheet" />
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png"/>
        <style>
        .button1 {
 padding: 15px 25px;
 border: unset;
 border-radius: 15px;
 color: #212121;
 z-index: 1;
 background-color:darkgoldenrod;
 position: relative;
 font-weight: 1000;
 font-size: 17px;
 -webkit-box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
 box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
 transition: all 250ms;
 overflow: hidden;
}

.button1::before {
 content: "";
 position: absolute;
 top: 0;
 left: 0;
 height: 100%;
 width: 0;
 border-radius: 15px;
 background-color: #412151;
 z-index: -1;
 -webkit-box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
 box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
 transition: all 250ms
}

.button1:hover {
 color: #e8e8e8;
}


.button1:hover::before {
 width: 100%;
}
        .card {
               margin-bottom: 10px;
        border: 1px solid #ccc;
        padding: 10px;
        width: 45%;
        display: inline-block;
        vertical-align: top;
        margin-right:5%;
        margin-bottom:3%;
        }
        .question-header {
            font-weight: bold;
        margin-bottom: 5px;
        }
        .question {
            margin-bottom: 10px;
        }
        .option {
           margin-bottom: 5px;
        }
        .option-text {
        margin-right: 10px;
    }

    .true-false {
        float: right;
    }

        .ques_cont{
            display: flex;
    justify-content: center;
    padding-top: 35px;
    
        }
        .cont{
    background-color: #F8F8F8;
    font-weight: 700;
    width: 90%;
    display: flex;
    padding: 20px 20px;
    border-radius: 10px;
    justify-content: center;
    align-content: center;
    flex-wrap: wrap;
        }
        .timer {
           position: absolute;
           border: unset;
 border-radius: 15px;
  font-weight: 1000;
 font-size: 17px;
width: 95px;
height: 32px;
left: 90%;
top: 10%;

background: #412151;

text-align:center;
/* identical to box height */


color: #FFFFFF;

        }


        
    </style>


</head>
<body>
    <form runat="server">
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    
                    <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="images/logo1.png"class="mr-2" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo-mini.svg" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>

                    <ul class="navbar-nav navbar-nav-right">
                        <li class="nav-item btn-border">
                            <button class="dropdown-item"> <i class="ti-power-off text-primary"></i>
                                Logout
                                </button>
                        </li>
                      
                        <li class="nav-item nav-profile dropdown">
                            <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="images/faces/face28.jpg" alt="profile" />
                            </a>
                            <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
                                <a class="dropdown-item">
                                    <i class="ti-settings text-primary"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item">
                                    <i class="ti-power-off text-primary"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                        <li style="width:180px;height:100%">  
                            <div style="width:100%;align-items:start;height:100%;display:flex;justify-content:center;align-content:center;flex-direction:column;padding-left:20px">
                                <label style="margin-bottom:0px;font-weight:bold" >9902286678087</label>
                                <label style="margin-bottom:0px;text-align:left;font-weight:500">Student</label>
                            </div>
                        </li>
                        <!--<li class="nav-item nav-settings d-none d-lg-flex">
                      <a class="nav-link" href="#">
                        <i class="icon-ellipsis"></i>
                      </a>
                    </li>-->

                    </ul>
                    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
                        <span class="icon-menu"></span>
                    </button>
                </div>
            </nav>
            </div>
            <!-- partial -->

                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">

                        
                        <div style="padding-top: 7%;display: flex;justify-content: center; color:#412151;">
                        <H3>Section B(State whether the following statements are True or False.) </H3>
                        
                 
                 
             </div>
             
             
    <div class="ques_cont">
        <div class="timer" id="timer">60:00</div>
        
        <div class="cont" id="questionContainer">

        </div>
    </div>
             <div style="display:flex;justify-content:flex-end;padding:25px 25px;">
                 <a class="button1" href="Section C.aspx" > Next!
                 </a>
             </div>
    <script>
        // Retrieve the target time from the server-side session variable
        const targetTime = new Date('<%= Session["TargetTime"] %>').getTime();

        // Calculate the initial remaining time
        const currentTime = new Date().getTime();
        const remainingTime = targetTime - currentTime;

        // Start the timer immediately with the initial remaining time
        updateTimer(remainingTime);

        // Schedule the regular timer update every second
        const timerInterval = setInterval(updateTimer, 1000);

        function updateTimer(remainingTime = null) {
            if (remainingTime === null) {
                // Get the current time
                const currentTime = new Date().getTime();

                // Calculate the remaining time in milliseconds
                remainingTime = targetTime - currentTime;
            }

            const timerElement = document.getElementById("timer");

            if (remainingTime <= 0) {
                // Stop the timer
                clearInterval(timerInterval);

                // Update the timer display to show 00:00
                timerElement.textContent = "00:00";

                // Perform any desired actions when the timer ends
                // (e.g., display a message, play a sound, etc.)
                alert("Timer has ended!");
            } else {
                // Calculate the remaining minutes and seconds
                const minutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((remainingTime % (1000 * 60)) / 1000);

                // Format the remaining time as MM:SS
                const formattedTime = padZero(minutes) + ":" + padZero(seconds);

                // Update the timer display
                timerElement.textContent = formattedTime;
            }
        }

        // Helper function to pad single digits with leading zeros
        function padZero(number) {
            return number < 10 ? "0" + number : number;
        }

    </script>
<style>
    .option {
        margin-bottom: 8px;
    }
</style>

<script>
    var myQuestion = "<%= QuestionB %>";
    var myOption = JSON.parse('<%= OptionJsonB %>');
    // Array of questions with their respective options
    const questions = [
        {
            question: myQuestion,
            options: myOption
        },
        {
            question: myQuestion,
            options: myOption
        },
        {
            question: myQuestion,
            options: myOption
        },
        {
            question: myQuestion,
            options: myOption
        },
        {
            question: myQuestion,
            options: myOption
        },
        {
            question: myQuestion,
            options: myOption
        },

        // Add more questions here
        // Add more questions here
    ];

    // Generate the HTML for the questions
    function generateQuestions() {
        const container = document.getElementById("questionContainer");

        // Loop through the questions array
        for (let i = 0; i < questions.length; i++) {
            const question = questions[i];

            // Create a card element
            const card = document.createElement("div");
            card.className = "card";

            // Create a question header element
            const questionHeader = document.createElement("div");
            questionHeader.className = "question-header";
            questionHeader.textContent = "Question " + (i + 1);

            // Create a question element
            const questionElement = document.createElement("div");
            questionElement.className = "question";
            questionElement.textContent = question.question;

            // Append the question header and question element to the card
            card.appendChild(questionHeader);
            card.appendChild(questionElement);

            // Loop through the options and create radio buttons for true/false
            for (let j = 0; j < question.options.length; j++) {
                const option = question.options[j];

                // Create a label element
                const label = document.createElement("label");

                // Create a span for the option numbering
                const numberingSpan = document.createElement("span");
                numberingSpan.textContent = (i + 1) + "." + (j + 1) + ". ";

                // Create a span for the option text
                const optionSpan = document.createElement("span");
                optionSpan.className = "option-text";
                optionSpan.textContent = option;

                // Create the radio buttons for true/false
                const trueRadio = document.createElement("input");
                trueRadio.type = "radio";
                trueRadio.name = "question" + i + "." + (j + 1);
                trueRadio.value = "true";

                const falseRadio = document.createElement("input");
                falseRadio.type = "radio";
                falseRadio.name = "question" + i + "." + (j + 1);
                falseRadio.value = "false";

                // Create a div for each option
                const optionDiv = document.createElement("div");
                optionDiv.className = "option";

                // Append the option text and numbering to the div
                optionDiv.appendChild(numberingSpan);
                optionDiv.appendChild(optionSpan);
                

                // Create a div for true/false radio buttons and their text
                const trueFalseDiv = document.createElement("div");
                trueFalseDiv.className = "true-false";

                // Append the true/false radio buttons and their text to the true/false div
                trueFalseDiv.appendChild(trueRadio);
                trueFalseDiv.appendChild(document.createTextNode("True"));
                trueFalseDiv.appendChild(falseRadio);
                trueFalseDiv.appendChild(document.createTextNode("False"));

                // Append the true/false div to the option div
                optionDiv.appendChild(trueFalseDiv);

                // Append the option div to the card
                card.appendChild(optionDiv);
            }

            // Append the card to the container
            container.appendChild(card);

            // Check if the current card is the second card in the row
            if ((i + 1) % 2 === 0) {
                // Create a new line break after every second card
                const lineBreak = document.createElement("br");
                container.appendChild(lineBreak);
            }
        }
    }

    // Call the function to generate the questions
    generateQuestions();
</script>





         </div>


                        

                        
                        <!-- content-wrapper ends -->
                       
                    </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
       
        <!-- container-scroller -->
        <!-- plugins:js -->
        <script src="vendors/js/vendor.bundle.base.js"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="vendors/chart.js/Chart.min.js"></script>
        <script src="vendors/datatables.net/jquery.dataTables.js"></script>
        <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
        <script src="js/dataTables.select.min.js"></script>

        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="js/off-canvas.js"></script>
        <script src="js/hoverable-collapse.js"></script>
        <script src="js/template.js"></script>
        <script src="js/settings.js"></script>
        <script src="js/todolist.js"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="js/dashboard.js"></script>
        <script src="js/Chart.roundedBarCharts.js"></script>
        <!-- End custom js for this page-->
    </form>
     <!-- partial:partials/_footer.html -->
                        <footer style="background:#411f51" class="footer">
                            <div style="display:flex;justify-content:center">
                                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block"> Premium  Tel: 087 357 6608 | 011 628 7000 | Anti-Fraud Line: 0800 333 120</span>

                            </div>

                        </footer>

</body>
</html>
