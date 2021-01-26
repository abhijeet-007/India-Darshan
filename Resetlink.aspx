<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resetlink.aspx.cs" Inherits="Resetlink" %>

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


    
    
        .style1
        {
            width: 44%;
        }
        .style2
        {
            width: 128px;
        }
    </style>
</head>
<body>
    <div class="container-login100" style="background-image: url('App_Themes/Theme1/LR/images/taj-mahal.jpg');">
        
		<div class="wrap-login100 p-l-55 p-r-55 p-t-80 p-b-30">
        
			<form action="#" id="form2" class="login100-form validate-form" runat="server">
				<span class="login100-form-title p-b-37">
					Forgot Password?
				</span>
            <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
                <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Password" ControlToValidate="txtpwd"></asp:RequiredFieldValidator>
            <asp:TextBox CssClass="redbox" Width="278px" Height="41px" BorderColor="#CC33FF" BorderStyle="Solid" TextMode="Password" ID="txtpwd" runat="server" ></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
            <asp:TextBox CssClass="redbox" Width="278px" Height="41px" BorderColor="#CC33FF" BorderStyle="Solid" TextMode="Password" ID="txtcofrmpwd" runat="server" ></asp:TextBox>
            <asp:CompareValidator Display="Dynamic" ID="CompareValidatorPassword" runat="server" ControlToCompare="txtpwd"
                        ControlToValidate="txtcofrmpwd" ErrorMessage="Password does not match" Font-Names="Rockwell"
                        ForeColor="Red"></asp:CompareValidator>
                        <div class="container-login100-form-btn">
            <asp:Button CssClass="login100-form-btn" ID="btnsubmit" runat="server" Text="Submit" Width="156px" OnClick="btnsubmit_Click" />
            </div>
    

    
    </form>
    </div>
    </div>
</body>
</html>
