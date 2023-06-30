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

.button2 {
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

.button2::before {
 content: "";
 position: absolute;
 top: 0;
 right: 0;
 height: 100%;
 width: 0;
 border-radius: 15px;
 background-color: #412151;
 z-index: -1;
 -webkit-box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
 box-shadow: 4px 8px 19px -3px rgba(0,0,0,0.27);
 transition: all 250ms
}

.button2:hover {
 color: #e8e8e8;
}

.button2:hover::before {
 width: 100%;
}
        .card {
               margin-bottom: 10px;
        border: 1px solid #ccc;
        padding: 10px;
        width: 75%;
        display: inline-block;
        vertical-align: top;
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
    flex-direction: column;
    align-items: center;
    
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
    /* flex-direction: column; */
    flex-wrap: wrap;
        }

            .option {
        margin-bottom: 8px;
        display:flex;
        justify-content:space-between;
        border-bottom:solid;
        border-bottom-color:#dddddd;
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


.radio-buttons-container {
    display: flex;
    flex-direction: row;
}

.radio-buttons-list {
    display: flex;
    flex-direction: row;
    align-items: center;
    margin-right: 10px;
}
 tbody{
     display:flex;
 }

/* Hide the default radio button */
input[type="radio"] {
  appearance: none;
  -webkit-appearance: none;
  -moz-appearance: none;
  display: inline-block;
  width: 16px;
  height: 16px;
  border: 2px solid #ccc;
  border-radius: 50%;
  outline: none;
  cursor: pointer;
}

/* Style the custom radio button */
input[type="radio"]:before {
  content: "";
  display: block;
  width: 10px;
  height: 10px;
  margin: 1.5px;
  border-radius: 50%;
  background-color: #fff;
}

/* Style the custom radio button when selected */
input[type="radio"]:checked:before {
  background-color: #411f51;
}

/* Style the custom radio button on hover */
input[type="radio"]:hover:before {
  background-color: #650c8f;
}
.loading-bar {
    margin-top:20px;
  width: 60%;
  height: 20px;
  border: 1px solid #ccc;
  position: relative;
  border-radius:20px 20px;
  background-color:#c2c2c2
}

.progress {
  width: 25%;
  height: 100%;
  background-color: #411f51;
  position: absolute;
  top: 0;
  left: 0;
 
  background: repeating-linear-gradient(-45deg, #411f51 0 42px,#e8e8e8 0 50px) left/200% 100%;
  animation: i3 16s infinite linear;
  border-radius: 10px;
  border: 1px solid #766DF4;
}

            @keyframes i3 {
                100% {
                    background-position: right
                }
            }
/*Check box*/

/* checkbox settings 👇 */

.ui-checkbox {
  --primary-color: #4e2563;
  --secondary-color: #fff;
  --primary-hover-color: #212121;
  /* checkbox */
  --checkbox-diameter: 17px;
  --checkbox-border-radius: 5px;
  --checkbox-border-color: black;
  --checkbox-border-width: 1px;
  --checkbox-border-style: solid;
  /* checkmark */
  --checkmark-size: 1.2;
}

.ui-checkbox, 
.ui-checkbox *, 
.ui-checkbox *::before, 
.ui-checkbox *::after {
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
}

.ui-checkbox {
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  width: var(--checkbox-diameter);
  height: var(--checkbox-diameter);
  border-radius: var(--checkbox-border-radius);
  background: var(--secondary-color);
  border: var(--checkbox-border-width) var(--checkbox-border-style) var(--checkbox-border-color);
  -webkit-transition: all 0.3s;
  transition: all 0.3s;
  cursor: pointer;
  position: relative;
}

.ui-checkbox::after {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  -webkit-box-shadow: 0 0 0 calc(var(--checkbox-diameter) / 2.5) var(--primary-color);
  box-shadow: 0 0 0 calc(var(--checkbox-diameter) / 2.5) var(--primary-color);
  border-radius: inherit;
  opacity: 0;
  -webkit-transition: all 0.5s cubic-bezier(0.12, 0.4, 0.29, 1.46);
  transition: all 0.5s cubic-bezier(0.12, 0.4, 0.29, 1.46);
}

.ui-checkbox::before {
  top: 40%;
  left: 50%;
  content: "";
  position: absolute;
  width: 4px;
  height: 7px;
  border-right: 2px solid var(--secondary-color);
  border-bottom: 2px solid var(--secondary-color);
  -webkit-transform: translate(-50%, -50%) rotate(45deg) scale(0);
  -ms-transform: translate(-50%, -50%) rotate(45deg) scale(0);
  transform: translate(-50%, -50%) rotate(45deg) scale(0);
  opacity: 0;
  -webkit-transition: all 0.1s cubic-bezier(0.71, -0.46, 0.88, 0.6),opacity 0.1s;
  transition: all 0.1s cubic-bezier(0.71, -0.46, 0.88, 0.6),opacity 0.1s;
}

/* actions */

.ui-checkbox:hover {
  border-color: var(--primary-color);
}

.ui-checkbox:checked {
  background: var(--primary-color);
  border-color: transparent;
}

.ui-checkbox:checked::before {
  opacity: 1;
  -webkit-transform: translate(-50%, -50%) rotate(45deg) scale(var(--checkmark-size));
  -ms-transform: translate(-50%, -50%) rotate(45deg) scale(var(--checkmark-size));
  transform: translate(-50%, -50%) rotate(45deg) scale(var(--checkmark-size));
  -webkit-transition: all 0.2s cubic-bezier(0.12, 0.4, 0.29, 1.46) 0.1s;
  transition: all 0.2s cubic-bezier(0.12, 0.4, 0.29, 1.46) 0.1s;
}

.ui-checkbox:active:not(:checked)::after {
  -webkit-transition: none;
  -o-transition: none;
  -webkit-box-shadow: none;
  box-shadow: none;
  transition: none;
  opacity: 1;
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
               <div style="display:flex;justify-content:center;">
                   <div class="loading-bar">
                       <div class="progress"></div>
                   </div>
             </div>
                     
             
    <div class="ques_cont">
        <div class="timer" id="timer">60:00</div>
        
        <div class="cont" id="questionContainer">

<asp:Repeater ID="Repeater1" runat="server" OnItemDataBound="ItemBound">
    <ItemTemplate>
        <div class="card">
            <div class="question-number">
                <asp:Label ID="lbl_QuestionNumber" runat="server" Text='<%# Eval("QuestionNumber") %>' CssClass="question-header"></asp:Label>
            </div>
            <div class="question">
                <asp:Label ID="lbl_QuestionText" runat="server" Text='<%# Eval("QuestionText") %>' CssClass="question-header"></asp:Label>
            </div>
            <asp:Repeater ID="OptionsRepeater" runat="server">
                <ItemTemplate>
                    <div class="option">
                        <div>
                            <asp:Label ID="lblOption" runat="server" Text='<%# Container.DataItem %>' CssClass="option-text"></asp:Label>
                        </div>
                        <div class="radio-buttons-container">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio-buttons-list">
                                <asp:ListItem Text="True" Value="1"></asp:ListItem>
                                <asp:ListItem Text="False" Value="0"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </ItemTemplate>
</asp:Repeater>

        </div>

        <div class="cont" >

<asp:Repeater ID="Repeater2" runat="server" OnItemDataBound="ItenBoundX">
    <ItemTemplate>
        <div class="card">
            <div class="question-number">
                <asp:Label ID="lbl_QuestionNumber" runat="server" Text='<%# Eval("QuestionNumber") %>' CssClass="question-header"></asp:Label>
            </div>
            <div class="question">
                <asp:Label ID="lbl_QuestionText" runat="server" Text='<%# Eval("QuestionText") %>' CssClass="question-header"></asp:Label>
            </div>
            <asp:Repeater ID="OptionsRepeater1" runat="server">
                <ItemTemplate>
                    <div class="option"> 
                        <div>
                            <asp:Label ID="lblOption" runat="server" Text='<%# Container.DataItem %>' CssClass="option-text"></asp:Label>
                        </div>
                        <input type="checkbox" class="ui-checkbox">
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </ItemTemplate>
</asp:Repeater>

        </div>
    </div>
             <div style="display:flex;justify-content:space-between;padding:25px 25px;">
                  <a class="button2" href="Section A.aspx" > Back!
                 </a>
                 <a class="button1" href="Section C.aspx" > Next!
                 </a>
                
             </div>
<script>
    // Attach event listeners to checkboxes
    var cards = document.querySelectorAll('.card');
    cards.forEach(function (card) {
        var checkboxes = card.querySelectorAll('.ui-checkbox');
        checkboxes.forEach(function (checkbox) {
            checkbox.addEventListener('change', function () {
                var selectedValues = [];
                checkboxes.forEach(function (cb) {
                    if (cb.checked) {
                        selectedValues.push(cb.parentElement.querySelector('.option-text').innerText);
                    }
                });
                var cardId = card.querySelector('.question-number').innerText;
                var groupName = 'checkboxes-' + cardId;
                sessionStorage.setItem(groupName, JSON.stringify(selectedValues));
            });
        });
    });

    // On page load, retrieve and set the previously selected values
    function setCheckboxesFromSession() {
        cards.forEach(function (card) {
            var checkboxes = card.querySelectorAll('.ui-checkbox');
            var cardId = card.querySelector('.question-number').innerText;
            var groupName = 'checkboxes-' + cardId;
            var storedValues = sessionStorage.getItem(groupName);
            if (storedValues) {
                var selectedValues = JSON.parse(storedValues);
                checkboxes.forEach(function (checkbox) {
                    var optionText = checkbox.parentElement.querySelector('.option-text').innerText;
                    checkbox.checked = selectedValues.includes(optionText);
                });
            }
        });
    }

    setCheckboxesFromSession(); // Call the function to set the values on page load
</script>
 <script>
     // Attach event listeners to radio buttons
     var radioButtons = document.querySelectorAll('input[type="radio"]');
     radioButtons.forEach(function (radioButton) {
         radioButton.addEventListener('click', function () {
             var selectedValue = this.value;
             var groupName = this.getAttribute('name'); // Get the name attribute instead of data-group
             sessionStorage.setItem(groupName, selectedValue);
         });
     });

     // On page load, retrieve and set the previously selected values
     function SetRadioButtonsFromSession() {
         radioButtons.forEach(function (radioButton) {
             var groupName = radioButton.getAttribute('name'); // Get the name attribute instead of data-group
             var storedValue = sessionStorage.getItem(groupName);
             if (storedValue && storedValue === radioButton.value) {
                 radioButton.checked = true;
             }
         });
     }

     SetRadioButtonsFromSession(); // Call the function to set the values on page load
 </script>
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
