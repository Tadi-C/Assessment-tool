<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsentForm.aspx.cs" Inherits="CHIETA_WebApp.ConsentForm" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Skydash Admin</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="vendors/feather/feather.css">
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="js/select.dataTables.min.css">
    <link rel="stylesheet" href="../../vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="NewStyles/StyleSheet1.css"  />
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="images/favicon.png" />


</head>
<body>
    <form runat="server">
        <div class="container-scroller">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                    <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="images/logo1.png" class="mr-2" alt="logo" /></a>
                    <a class="navbar-brand brand-logo-mini" href="index.html"><img src="images/logo1.png" alt="logo" /></a>
                </div>
                <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                    <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
                        <span class="icon-menu"></span>
                    </button>

                    <ul class="navbar-nav navbar-nav-right">
                        <!--<li class="nav-item dropdown">
                      <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
                        <i class="icon-bell mx-0"></i>
                        <span class="count"></span>
                      </a>-->
                        <!--<div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
                      <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
                      <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                          <div class="preview-icon bg-success">
                            <i class="ti-info-alt mx-0"></i>
                          </div>
                        </div>
                        <div class="preview-item-content">
                          <h6 class="preview-subject font-weight-normal">Application Error</h6>
                          <p class="font-weight-light small-text mb-0 text-muted">
                            Just now
                          </p>
                        </div>
                      </a>
                      <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                          <div class="preview-icon bg-warning">
                            <i class="ti-settings mx-0"></i>
                          </div>
                        </div>
                        <div class="preview-item-content">
                          <h6 class="preview-subject font-weight-normal">Settings</h6>
                          <p class="font-weight-light small-text mb-0 text-muted">
                            Private message
                          </p>
                        </div>
                      </a>
                      <a class="dropdown-item preview-item">
                        <div class="preview-thumbnail">
                          <div class="preview-icon bg-info">
                            <i class="ti-user mx-0"></i>
                          </div>
                        </div>
                        <div class="preview-item-content">
                          <h6 class="preview-subject font-weight-normal">New user registration</h6>
                          <p class="font-weight-light small-text mb-0 text-muted">
                            2 days ago
                          </p>
                        </div>
                      </a>
                    </div>-->
                        <!--</li>-->
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
            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
                <!-- partial:partials/_settings-panel.html -->
                <div class="theme-setting-wrapper">
                    <div id="settings-trigger"><i class="ti-settings"></i></div>
                    <div id="theme-settings" class="settings-panel">
                        <i class="settings-close ti-close"></i>
                        <p class="settings-heading">SIDEBAR SKINS</p>
                        <div class="sidebar-bg-options selected" id="sidebar-light-theme"><div class="img-ss rounded-circle bg-light border mr-3"></div>Light</div>
                        <div class="sidebar-bg-options" id="sidebar-dark-theme"><div class="img-ss rounded-circle bg-dark border mr-3"></div>Dark</div>
                        <p class="settings-heading mt-2">HEADER SKINS</p>
                        <div class="color-tiles mx-0 px-4">
                            <div class="tiles success"></div>
                            <div class="tiles warning"></div>
                            <div class="tiles danger"></div>
                            <div class="tiles info"></div>
                            <div class="tiles dark"></div>
                            <div class="tiles default"></div>
                        </div>
                    </div>
                </div>
                <div id="right-sidebar" class="settings-panel">
                    <i class="settings-close ti-close"></i>
                    <ul class="nav nav-tabs border-top" id="setting-panel" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" id="todo-tab" data-toggle="tab" href="#todo-section" role="tab" aria-controls="todo-section" aria-expanded="true">TO DO LIST</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" id="chats-tab" data-toggle="tab" href="#chats-section" role="tab" aria-controls="chats-section">CHATS</a>
                        </li>
                    </ul>
                    <div class="tab-content" id="setting-content">
                        <div class="tab-pane fade show active scroll-wrapper" id="todo-section" role="tabpanel" aria-labelledby="todo-section">
                            <div class="add-items d-flex px-3 mb-0">
                                <form class="form w-100">
                                    <div class="form-group d-flex">
                                        <input type="text" class="form-control todo-list-input" placeholder="Add To-do">
                                        <button type="submit" class="add btn btn-primary todo-list-add-btn" id="add-task">Add</button>
                                    </div>
                                </form>
                            </div>
                            <div class="list-wrapper px-3">
                                <ul class="d-flex flex-column-reverse todo-list">
                                    <li>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="checkbox" type="checkbox">
                                                Team review meeting at 3.00 PM
                                            </label>
                                        </div>
                                        <i class="remove ti-close"></i>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="checkbox" type="checkbox">
                                                Prepare for presentation
                                            </label>
                                        </div>
                                        <i class="remove ti-close"></i>
                                    </li>
                                    <li>
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="checkbox" type="checkbox">
                                                Resolve all the low priority tickets due today
                                            </label>
                                        </div>
                                        <i class="remove ti-close"></i>
                                    </li>
                                    <li class="completed">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="checkbox" type="checkbox" checked>
                                                Schedule meeting for next week
                                            </label>
                                        </div>
                                        <i class="remove ti-close"></i>
                                    </li>
                                    <li class="completed">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="checkbox" type="checkbox" checked>
                                                Project review
                                            </label>
                                        </div>
                                        <i class="remove ti-close"></i>
                                    </li>
                                </ul>
                            </div>
                            <h4 class="px-3 text-muted mt-5 font-weight-light mb-0">Events</h4>
                            <div class="events pt-4 px-3">
                                <div class="wrapper d-flex mb-2">
                                    <i class="ti-control-record text-primary mr-2"></i>
                                    <span>Feb 11 2018</span>
                                </div>
                                <p class="mb-0 font-weight-thin text-gray">Creating component page build a js</p>
                                <p class="text-gray mb-0">The total number of sessions</p>
                            </div>
                            <div class="events pt-4 px-3">
                                <div class="wrapper d-flex mb-2">
                                    <i class="ti-control-record text-primary mr-2"></i>
                                    <span>Feb 7 2018</span>
                                </div>
                                <p class="mb-0 font-weight-thin text-gray">Meeting with Alisa</p>
                                <p class="text-gray mb-0 ">Call Sarah Graves</p>
                            </div>
                        </div>
                        <!-- To do section tab ends -->
                        <div class="tab-pane fade" id="chats-section" role="tabpanel" aria-labelledby="chats-section">
                            <div class="d-flex align-items-center justify-content-between border-bottom">
                                <p class="settings-heading border-top-0 mb-3 pl-3 pt-0 border-bottom-0 pb-0">Friends</p>
                                <small class="settings-heading border-top-0 mb-3 pt-0 border-bottom-0 pb-0 pr-3 font-weight-normal">See All</small>
                            </div>
                            <ul class="chat-list">
                                <li class="list active">
                                    <div class="profile"><img src="images/faces/face1.jpg" alt="image"><span class="online"></span></div>
                                    <div class="info">
                                        <p>Thomas Douglas</p>
                                        <p>Available</p>
                                    </div>
                                    <small class="text-muted my-auto">19 min</small>
                                </li>
                                <li class="list">
                                    <div class="profile"><img src="images/faces/face2.jpg" alt="image"><span class="offline"></span></div>
                                    <div class="info">
                                        <div class="wrapper d-flex">
                                            <p>Catherine</p>
                                        </div>
                                        <p>Away</p>
                                    </div>
                                    <div class="badge badge-success badge-pill my-auto mx-2">4</div>
                                    <small class="text-muted my-auto">23 min</small>
                                </li>
                                <li class="list">
                                    <div class="profile"><img src="images/faces/face3.jpg" alt="image"><span class="online"></span></div>
                                    <div class="info">
                                        <p>Daniel Russell</p>
                                        <p>Available</p>
                                    </div>
                                    <small class="text-muted my-auto">14 min</small>
                                </li>
                                <li class="list">
                                    <div class="profile"><img src="images/faces/face4.jpg" alt="image"><span class="offline"></span></div>
                                    <div class="info">
                                        <p>James Richardson</p>
                                        <p>Away</p>
                                    </div>
                                    <small class="text-muted my-auto">2 min</small>
                                </li>
                                <li class="list">
                                    <div class="profile"><img src="images/faces/face5.jpg" alt="image"><span class="online"></span></div>
                                    <div class="info">
                                        <p>Madeline Kennedy</p>
                                        <p>Available</p>
                                    </div>
                                    <small class="text-muted my-auto">5 min</small>
                                </li>
                                <li class="list">
                                    <div class="profile"><img src="images/faces/face6.jpg" alt="image"><span class="online"></span></div>
                                    <div class="info">
                                        <p>Sarah Graves</p>
                                        <p>Available</p>
                                    </div>
                                    <small class="text-muted my-auto">47 min</small>
                                </li>
                            </ul>
                        </div>
                        <!-- chat tab ends -->
                    </div>
                </div>
                <!-- partial -->
                <!-- partial:partials/_sidebar.html -->
                <nav class="sidebar sidebar-offcanvas" id="sidebar">
                    <ul class="nav">
                        <li class="nav-item">
                            <a class="nav-link" href="index.html">
                                <i class="mdi mdi-airplay"></i>
                                <span class="menu-title">Upload Document</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="Contact.aspx">
                                <i class="mdi mdi-airplay"></i>
                                <span class="menu-title">Contact</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="../ConsentForm.aspx">
                                <i class="mdi mdi-airplay"></i>
                                <span class="menu-title">Consent Form</span>
                            </a>
                        </li>

                          <li class="nav-item">
                            <a class="nav-link" href="ProjectCourse.aspx">
                                <i class="mdi mdi-airplay"></i>
                                <span class="menu-title">Project/Course</span>
                            </a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
                                <i class="icon-layout menu-icon"></i>
                                <span class="menu-title">UI Elements</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="pages/ui-features/dropdowns.html">Dropdowns</a></li>
                                    <li class="nav-item"> <a class="nav-link" href="pages/ui-features/typography.html">Typography</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false" aria-controls="form-elements">
                                <i class="icon-columns menu-icon"></i>
                                <span class="menu-title">Form elements</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="form-elements">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"><a class="nav-link" href="pages/forms/basic_elements.html">Basic Elements</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#charts" aria-expanded="false" aria-controls="charts">
                                <i class="icon-bar-graph menu-icon"></i>
                                <span class="menu-title">Charts</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="charts">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="pages/charts/chartjs.html">ChartJs</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#tables" aria-expanded="false" aria-controls="tables">
                                <i class="icon-grid-2 menu-icon"></i>
                                <span class="menu-title">Tables</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="tables">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="pages/tables/basic-table.html">Basic table</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#icons" aria-expanded="false" aria-controls="icons">
                                <i class="icon-contract menu-icon"></i>
                                <span class="menu-title">Icons</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="icons">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="pages/icons/mdi.html">Mdi icons</a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
                                <i class="icon-head menu-icon"></i>
                                <span class="menu-title">User Pages</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="auth">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="pages/samples/login.html"> Login </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="pages/samples/register.html"> Register </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="collapse" href="#error" aria-expanded="false" aria-controls="error">
                                <i class="icon-ban menu-icon"></i>
                                <span class="menu-title">Error pages</span>
                                <i class="menu-arrow"></i>
                            </a>
                            <div class="collapse" id="error">
                                <ul class="nav flex-column sub-menu">
                                    <li class="nav-item"> <a class="nav-link" href="pages/samples/error-404.html"> 404 </a></li>
                                    <li class="nav-item"> <a class="nav-link" href="pages/samples/error-500.html"> 500 </a></li>
                                </ul>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="pages/documentation/documentation.html">
                                <i class="icon-paper menu-icon"></i>
                                <span class="menu-title">Documentation</span>
                            </a>
                        </li>
                    </ul>
                </nav>
                <!-- partial -->
                <div class="main-panel">
                    <div class="content-wrapper">
                        <div class="row">
                            <div class="col-md-12 grid-margin">
                                <div class="row">
                                    <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                                        <h3 class="font-weight-bold">Welcome</h3>
                                        <h6 class="font-weight-normal mb-0" style="color: #CA8A1C">University of johannesburg<span class="text-primary"></span></h6>
                                    </div>
                                    <!--<div class="col-12 col-xl-4">
                                        <div class="justify-content-end d-flex">
                                            <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                                                <button class="btn btn-sm btn-light bg-white dropdown-toggle" type="button" id="dropdownMenuDate2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                                    <i class="mdi mdi-calendar"></i> Today (10 Jan 2021)
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuDate2">
                                                    <a class="dropdown-item" href="#">January - March</a>
                                                    <a class="dropdown-item" href="#">March - June</a>
                                                    <a class="dropdown-item" href="#">June - August</a>
                                                    <a class="dropdown-item" href="#">August - November</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>-->
                                </div>
                            </div>
                        </div>
                        
                        
                 
                        <div class="row">
                            <div  style="width:100%">
                                <div class="card" style="width:100%;max-width:100%;padding:20px"  >
                                    

                                        <div id="headingcontainer">
                                             <h3 id="h3heading">Consent Form for Student</h3>
                                            <img id="imglogo" src="images/logo1.png" class="mr-2" alt="logo" />

                                        </div>
                                       
                                        <p>I confirm that by voluntarily submitting any personal information to CHIETA, in any form, it constitutes an indefinite, unconditional and specific consent for CHIETA to share such information with third parties, and to obtain relevant information from third parties. Third parties include government departments and entities, credit bureaus, institution of higher learning and other agencies for the purpose of information validation, reporting, statistical analysis, credit and income validations to assess my financial eligibility, criminal checks, legal proceedings, audit and record-keeping purposes, debt tracing and/or debt recovery purposes, securing funding on my behalf and to verify academic and registration data as required. The personal information to be obtained from SARS shall relate only to the employment status and income</p>
                                       
                                        <div style="width:100%;border-top: 2px solid #0000006B;margin-top:30px"></div>

                                        <div style="margin-top:20px">

                                        <input type="text" class="inp" placeholder="fullname and surname" />
                                         <input type="text" class="inp" placeholder="ID Number" />
                                         <input type="text" class="inp" placeholder="Cell Phone Number" />

                                            </div>

                                        <div style="width:100%;border-top: 2px solid #0000006B;margin-top:20px;margin-bottom:20px"></div>

                                        <p>By signing this application form, I accept and understand that this application does not guarantee that I will receive CHIETA administered funding. I acknowledge that any personal information and supporting documentation supplied to CHIETA is done so voluntarily in order to facilitate the processing of this application. I furthermore acknowledge that the information provided by me, is to the best of my knowledge both true and correct, and that I understand that any false or inaccurate information or documentation submitted may render the application ineligible and I may be subject to legal action. I understand and accept that if my application for financial aid is approved as eligible, funding is only confirmed and processed on receipt by CHIETA of valid registration costs from a public higher education institution for an approved funded programme. I accept that funding granted would be governed by the National Bursary Rules and Guidelines of the Department of Higher Education, Science and Technology which may be amended annually, and that I will comply with the annual requirements of funding. CHIETA will email a full National Bursary Agreement on receipt of valid registration data. By submitting this application, I understand, acknowledge and accept the terms and conditions contained in the CHIETA Bursary Agreement. The CHIETA Bursary Agreement terms and conditions can be found on the CHIETA web site (www.chieta.org.za) or contact our toll free number 08600067327 for any queries.</p>


                                        <button style="align-self:center" class="btn btn-primary btn-rounded btn-fw">Submit</button>

                                    </div>
                            </div>
                            
                       
                    </div>
                    <!-- content-wrapper ends -->
                    <!-- partial:partials/_footer.html -->
                     <footer class="footer">
                        <div style="display:flex;justify-content:center">
                            <span class="text-muted text-center text-sm-left d-block d-sm-inline-block"> Premium  Tel: 087 357 6608 | 011 628 7000 | Anti-Fraud Line: 0800 333 120</span>
                            
                        </div>
                        
                    </footer>
                    <!-- partial -->
                </div>
                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
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
</body>

</html>


