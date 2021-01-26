<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration2.aspx.cs" Inherits="Registration2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>India Darshan</title>
<meta content="text/html;charset=ISO-8859-1" />
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <!--===============================================================================================-->
    <meta name="keywords" content="Wedding Invitation Form Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--===============================================================================================-->	
	<link rel="icon" type="image/png" 
        href="http://localhost:12616/Theme1/LR/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/fonts/iconic/css/material-design-iconic-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/css/util.css"/>
	<link rel="stylesheet" type="text/css" 
        href="http://localhost:12616/Theme1/LR/css/main.css"/>
<!--===============================================================================================-->


<link rel="stylesheet" href="http://localhost:12616/Theme1/LR/csss/style.css" 
        type="text/css" media="all"/>
<!--===============================================================================================-->
<link rel="stylesheet" href="http://localhost:12616/Theme1/LR/csss/jquery-ui.css" 
        type="text/css" media="all"/>
<!--===============================================================================================-->
<link href="http://localhost:12616/Theme1/LR/csss/wickedpicker.css" 
        rel="stylesheet" type='text/css' media="all" />
<!--===============================================================================================-->
<link href="http://localhost:12616/Theme1/LR/csss/font-awesome.css" 
        rel="stylesheet"/>
<!--===============================================================================================-->
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800"  type="text/css" media="all"/>
<!--===============================================================================================-->
<link href="//fonts.googleapis.com/css?family=Parisienne&amp;subset=latin-ext" rel="stylesheet"/>
<!--===============================================================================================-->
<link href="//fonts.googleapis.com/css?family=Berkshire+Swash&amp;subset=latin-ext" rel="stylesheet"/>
<!--===============================================================================================-->
<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/jss/jquery-2.1.4.min.js"></script>
<!--===============================================================================================-->

<style type="text/css"> 
.pinkbox {
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
        
		<div class="wrap-login100 p-l-55 p-r-55 p-t-50 p-b-30">
			<form id="form2" runat="server">
				<span class="login100-form-title p-b-15">
					Registration
				</span>

                <%--<div class="ferry ferry-form" >--%>
                    <asp:Label  ID="Label3" runat="server" Text="Username" Font-Size="Medium"></asp:Label>
                    <asp:TextBox CssClass="pinkbox" ID="TextBox8" runat="server" 
                    BorderStyle="Solid" BorderWidth="2px" BorderColor="#CC33FF" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="Enter Username" ControlToValidate="TextBox8" ForeColor="Red"></asp:RequiredFieldValidator>
					
                    <!--<span class="focus-input100"></span>-->
				<%--</div>--%>

                <%--<div class="ferry ferry-form" >--%>
                <br />
                <asp:Label   ID="Label4" runat="server" Text="Email" Font-Size="Medium" ></asp:Label>
                    <asp:TextBox CssClass="pinkbox"  ID="TextBox4" runat="server" 
                    BorderStyle="Solid" BorderColor="#CC33FF" BorderWidth="2px" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ErrorMessage="Enter Email" ControlToValidate="TextBox4" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ErrorMessage="Enter valid email" ControlToValidate="TextBox4" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ForeColor="Red"></asp:RegularExpressionValidator>
					<!--<span class="focus-input100"></span>-->
				<%--</div>--%>

                <%--<div class="ferry ferry-form" >--%>
                <br />
                <asp:Label   ID="Label5" runat="server" Text="Password" Font-Size="Medium" ></asp:Label>
                    <asp:TextBox CssClass="pinkbox"  ID="TextBox5" runat="server" 
                        TextMode="Password" BorderStyle="Solid" BorderColor="#CC33FF" 
                     Height="40px" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ErrorMessage="Enter Passsword" ControlToValidate="TextBox5" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:RegularExpressionValidator Display = "Dynamic" 
                    ControlToValidate = "TextBox5" ID="RegularExpressionValidator3" 
                    ValidationExpression = "^[\s\S]{8,12}$" runat="server" 
                    ErrorMessage="Minimum 8 and Maximum 12 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
					<!--<span class="focus-input100"></span>-->
				<%--</div>
                <div class="ferry ferry-form" >--%>
                <br />
                <asp:Label   ID="Label6" runat="server" Text="Confirm Password" Font-Size="Medium" ></asp:Label>
                    <asp:TextBox CssClass="pinkbox" ID="TextBox6" runat="server" 
                        TextMode="Password" BorderColor="#CC33FF" BorderStyle="Solid" 
                         Height="40px" Width="278px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ErrorMessage="Enter confirm password" ControlToValidate="TextBox6" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
					<!--<span class="focus-input100"></span>-->
				<%--</div>

                <div class="ferry ferry-form" >--%>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TextBox5" ControlToValidate="TextBox6" 
                ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
                <br />
                <asp:Label   ID="Label7" runat="server" Text="Mobile no" Font-Size="Medium" ></asp:Label>
                    <asp:TextBox CssClass="pinkbox" ID="TextBox7" runat="server" BorderColor="#CC33FF" 
                        BorderStyle="Solid" BorderWidth="2px" Width="278px" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="Enter Mobile No." ControlToValidate="TextBox7" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ErrorMessage="Enter valid mobile No." ControlToValidate="TextBox7" 
                        ForeColor="Red" ValidationExpression="^[789]\d{9}$"></asp:RegularExpressionValidator>
					<!--<span class="focus-input100"></span>-->
				<%--</div>

                <div class="ferry ferry-form" >--%>
                <asp:Label   ID="Label8" runat="server" Text="Gender" Font-Size="Medium" ></asp:Label>
                    <asp:DropDownList CssClass="pinkbox" ID="DropDownList1" 
                    BorderColor="#CC33FF" runat="server" Width="278px">
                        <asp:ListItem>Select Gender</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ErrorMessage="Select Gender" ControlToValidate="DropDownList1" 
                        ForeColor="Red" InitialValue="Select Gender"></asp:RequiredFieldValidator>
					<!--<span class="focus-input100"></span>-->
				<%--</div>

                <div class="ferry ferry-form" >--%>
                <br />
                <asp:Label   ID="Label9" runat="server" Text="Address" Font-Size="Medium" ></asp:Label>
                    <asp:TextBox  ID="TextBox9" runat="server" CssClass="pinkbox" BorderColor="#CC33FF" 
                    BorderStyle="Solid" BorderWidth="2px" Width="278px" 
                     ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ErrorMessage="Enter Address" ControlToValidate="TextBox9" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator Display = "Dynamic" 
                    ControlToValidate = "TextBox9" ID="RegularExpressionValidator4" 
                    ValidationExpression = "^[\s\S]{15,50}$" runat="server" 
                    ErrorMessage="Minimum 15 and Maximum 50 characters required." ForeColor="Red"></asp:RegularExpressionValidator>
					<!--<span class="focus-input100"></span>-->
				<%--</div>--%>

				<div class="container-login100-form-btn">
                    <asp:Button CssClass="login100-form-btn" ID="Button2" runat="server" 
                        Text="Sign up" onclick="Button2_Click" />
				</div>

				<!--<div class="text-center p-t-57 p-b-20">
					<!--<span class="txt1"></span>
						Or login with
					
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
					<a href="Login2.aspx" class="txt2 hov1">
						Login
					</a>
				</div>
			</form>

			
		</div>
	</div>
	
	

	<div id="dropDownSelect1"></div>

    <!-- Necessary-JavaScript-Files-&-Links -->
			<!-- Date-Picker-JavaScript -->
				<script src="http://localhost:12616/jss/jquery-ui.js" 
        type="text/javascript"></script>
				<script type="text/javascript">
				    $(function () {
				        $("#datepicker,#datepicker1,#datepicker2").datepicker();
				    });
				</script>
				<script type="text/javascript" 
        src="http://localhost:12616/jss/wickedpicker.js"></script>
			<script type="text/javascript">
			    $('.timepicker').wickedpicker({ twentyFour: false });
			</script>

    <!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" 
        src="http://localhost:12616/Theme1/LR/js/main.js"></script>
    
</body>
</html>