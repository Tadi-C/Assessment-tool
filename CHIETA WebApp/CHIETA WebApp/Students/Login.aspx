<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CHIETA_WebApp.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
        .login-form {
            max-width: 450px;
           

        }
        body{
            background:#e9ecfb
        }

        .login-form input[type="text"],
        .login-form input[type="password"] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
            background-color: #f8f8f8;
            color: #333;
        }

        .login-btn  {
            width: 100%;
            background-color: #8a2be2;
            color: #fff;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
        }

        .login-form input[type="submit"]:hover {
            background-color: #7a25d4;
        }
    </style>
</head>
<body style="display: flex;" >
                 
    
                        
    <form id="form1" style="margin: 25vh auto;" runat="server">
        <div class="col-lg-4 col-md-12">
            <img style="margin-left:10vh; margin-bottom:5px;" src="images/logo1.png" />
        </div>
        
        <div  class="login-form">
            <input type="text" placeholder="Username"/>
            <input type="password" placeholder="Password"/>
            
                <asp:Button ID="Button1" class="login-btn" runat="server" Text="Log In" onclick="Button1_Click" />
            
             </div>
        
    </form>
                       
           
</body>
</html>
