<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BrainTest.Login" %>

<!DOCTYPE html>

<html lang="en">

<head runat="server">
    <meta charset="utf-8" />
    <title>BrainTest</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%--   <link href="Content/Site.css" rel="stylesheet" />
    <link href="Content/style-responsive.css" rel="stylesheet" />
    <link href="Content/bootstrap-reset.css" rel="stylesheet" />
    <link href="Content/blue-theme.css" rel="stylesheet" />
    <link href="Content/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="~/Content/datepicker.css">
    <link rel="stylesheet" href="~/Content/bootstrap.css">
    <link href="Content/Site.css" rel="stylesheet" />--%>


    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <link href="Content/assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/assets/css/metro.css" rel="stylesheet" />
    <link href="Content/assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="Content/assets/css/style.css" rel="stylesheet" />
    <link href="Content/assets/css/style_responsive.css" rel="stylesheet" />
    <link href="Content/assets/css/style_default.css" rel="stylesheet" id="style_color" />
    <link rel="stylesheet" type="text/css" href="Content/assets/uniform/css/uniform.default.css" />
    <link rel="shortcut icon" href="favicon.ico" />

</head>
   
<body class="login">
    <!-- BEGIN LOGO -->
    <div class="logo">
        <%--  <img src="assets/img/logo-big.png" alt="" /> --%>
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form class="form-vertical login-form" runat="server">
            <%--<center><h3><img src="Asset/LG.png" style="margin-top:-20px!important; border-bottom: 1px solid #eee;"/></h3></center>--%>

            <center><b><h4><asp:Label id="lblheader" runat="server" ></asp:Label></h4></b></center>
            

            <div class="control-group" style="margin-bottom: -9px !important; margin-top: 40px !important">
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-user"></i>
                        <asp:TextBox ID="UserName" runat="server" type="text" placeholder="Username" class="m-wrap placeholder-no-fix" />
                    </div>
                    <div>
                        <asp:RequiredFieldValidator ID="ReqUserName" runat="server" ControlToValidate="UserName" ErrorMessage="*" ValidationGroup="addValidation"></asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>

            <div class="control-group" style="margin-bottom: -28px !important;">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-lock"></i>
                        <asp:TextBox ID="Pass" TextMode="Password" placeholder="Password" runat="server" class="m-wrap placeholder-no-fix" />
                    </div>
                    <div class="col-sm-2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                            runat="server" ControlToValidate="Pass"
                            ErrorMessage="*">
                        </asp:RequiredFieldValidator>
                    </div>
                </div>
            </div>



            <div class="form-actions">
                <center> <asp:Label ID="MyMessage" ForeColor="Red" CssClass ="NormalRed" runat="server"></asp:Label></center>
                <asp:Button ID="LoginBtn" class="btn blue pull-right" runat="server" OnClick="LoginBtn_Click"
                    Text="Login"></asp:Button>
            </div>
            <div class="copyright">  
       <asp:Label id="lblFooter" runat="server" ></asp:Label>
    </div>

        </form>
        <!-- END LOGIN FORM -->
    </div>
    <!-- END LOGIN -->
    <!-- BEGIN COPYRIGHT -->
    
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS -->
    <script src="Content/assets/js/jquery-1.8.3.min.js"></script>
    <script src="Content/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="Content/assets/uniform/jquery.uniform.min.js"></script>
    <script src="Content/assets/js/jquery.blockui.js"></script>
    <script type="text/javascript" src="Content/assets/jquery-validation/dist/jquery.validate.min.js"></script>
    <script src="Content/assets/js/app.js"></script>

    <!-- END JAVASCRIPTS -->
</body>
</html>
