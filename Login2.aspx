<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login2.aspx.cs" Inherits="Login2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>India Darshan</title>
<meta content="text/html;charset=ISO-8859-1" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../Theme1/LR/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/fonts/iconic/css/material-design-iconic-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="../Theme1/LR/css/main.css"/>
<!--===============================================================================================-->
<style type="text/css"> 
.redbox {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 2px solid red;
    border-radius: 4px;
}
</style>
</head>
<body>
    <div class="container-login100" style="background-image: url('App_Themes/Theme1/LR/images/taj-mahal.jpg');">
        
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
        
			<form action="#" id="form1" class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Login
				</span>

				<%--<div class="wrap-input100 validate-input m-b-20" >--%>
                    <asp:Label  ID="Label1" runat="server" Text="Label">UserName</asp:Label>
                    <asp:TextBox CssClass="redbox" ID="TextBox1" runat="server" 
                     Width="278px" Height="41px" BorderColor="#CC33FF" BorderStyle="Solid"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ErrorMessage="Enter UserName" ControlToValidate="TextBox1" ForeColor="Red"></asp:RequiredFieldValidator>
					<%--<span class="focus-input100"></span>--%>
				<%--</div>--%>

				<div class="wrap-input100 validate-input m-b-25" >
                <br />
                <asp:Label   ID="Label2" runat="server" Text="Label" >Password</asp:Label>
                    <asp:TextBox CssClass="input100" ID="TextBox2" runat="server" 
                    TextMode="Password" BorderStyle="Solid" BorderColor="#CC33FF" 
                    BorderWidth="3px" Height="40px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ErrorMessage="Enter Passsword" ControlToValidate="TextBox2" ForeColor="Red"></asp:RequiredFieldValidator>
					<%--<span class="focus-input100"></span>
				</div>--%>

				<div class="container-login100-form-btn">
                    <asp:Button CssClass="login100-form-btn" ID="Button1" runat="server" 
                        Text="Login" onclick="Button1_Click" />
				</div>

				<!--<div class="text-center p-t-57 p-b-20">
					<span class="txt1">
						Or login with
					</span>
				</div>

				<div class="flex-c p-b-112">
					<a href="#" class="login100-social-item">
						<i class="fa fa-facebook-f"></i>
					</a>

					<a href="#" class="login100-social-item">
						<img src="App_Themes/Theme1/LR/images/icons/icon-google.png" alt="GOOGLE"/>
					</a>
				</div>-->

				<div class="text-center">
					<br />
					<a href="Registration2.aspx" class="txt2 hov1">
						Sign Up
					</a>
                    &nbsp;|
                    <a href="forgetpasswordemail.aspx" class="txt2 hov1">
						Forget Password
					</a>
				</div>
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>
	
    
    <!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="../Theme1/LR/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="../Theme1/LR/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="../Theme1/LR/js/main.js"></script>
</body>
</html>
