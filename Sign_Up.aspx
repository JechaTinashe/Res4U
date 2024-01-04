﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_Up.aspx.cs" Inherits="RES4U__Latest.Sign_Up" %>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="Authentication/css/style.css">
	
	</head>
	<body>
	<form runat="server">
	<section class="ftco-section">
		<div class="container">	
			<div class="row justify-content-center">
				<div style="background-color:#293558">
								<img  src="Authentication/images/Sign up-cuate.png" style="height:500px; width:500px; margin-top: 90px"/>
							</div>
						<div class="login-wrap p-4 p-lg-5">
			      	<div class="d-flex">
			      		<div class="w-100">
							<img src="Authentication/images/logo-no-background.png" 
								style="height:50px; width:50px"/>
			      			<h2 class="mb-4" style="color:#293558">Create an account!</h2>
			      		</div>								
			      	</div>
							<p style="font-weight:300">Enter your details below to create an account</p>
							<form action="#" class="signin-form">
			      		<div class="form-group mb-3">
							  <asp:TextBox ID="TextBox1" runat="server" type="text" class="form-control" placeholder="Email" required style="border-radius:10px"></asp:TextBox>
			      			<%--<input type="text" class="form-control" placeholder="Email" required style="border-radius:10px">--%>
			      		</div>
		            <div class="form-group mb-3">
						<asp:TextBox ID="TextBox2" runat="server" type="password" class="form-control" placeholder="Password" required style="border-radius:10px"></asp:TextBox>
		              <%--<input type="password" class="form-control" placeholder="Password" required style="border-radius:10px">--%>
		            </div>
					<div class="form-group mb-3">
						<asp:TextBox ID="TextBox3" runat="server" type="password" class="form-control" placeholder="Repeat Password" required style="border-radius:10px"></asp:TextBox>
		              <%--<input type="password" class="form-control" placeholder="Repeat Password" required style="border-radius:10px">--%>
		            </div>
					<p style="font-weight:100; font-size:small">Password: 8 or more characters.</p>
					<label style="font-weight:300">
						<input type="checkbox"/>     By signing up I agree to the 
						<a style="text-decoration:underline; color:#293558">terms of the use</a> and the 
						<a style="text-decoration:underline; color:#293558">privacy policy</a></label>
		            <div class="form-group">
						<asp:Button ID="Button1" runat="server" Text="Continue" type="submit" OnClick="Button1_Click"
							style="border-radius:10px; background-color:#F9193E; height: 50px; width:475px; border:none; margin-top:10px; 
							text-align:center; color:#ffffff; margin-top:5px; font-size:larger"/>

		            	<%--<button type="submit" 
							style="border-radius:10px; background-color:#F9193E; height: 50px; width:475px; border:none; margin-top:10px">
							<p style="text-align:center; color:#ffffff; margin-top:5px; font-size:larger">Continue</p></button>--%>
		            </div>
					<p style="text-align:center; font-weight:300">Or continue with</p>
					<div class="form-group">
		            	<button type="submit" 
							style="border-radius:10px; background-color:#ffffff; height: 50px; width:475px; border-color:#293558">
							<img src="Authentication/images/Google.png" style="height:40px; width:10px; float:left; width:12%; margin-top:2px"/>
							<p style="text-align:center; color:#293558; font-weight:bold; margin-top:5px; font-size:larger; float:left; width:78%">Google</p></button>
		            </div>
		            </div>
		          </form>
		        </div>
		      </div>
				
	</section>

	
    </form>
	</body>
</html>