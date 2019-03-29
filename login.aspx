<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>
<!DOCTYPE html>
<html>
<head>
	<title>Book Light - Library Management System</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div class="container">
    <div class="col-md-4"></div>

    <div class="col-md-4">
    <form id="form1" runat="server">
        <h2 class="form-signin-heading" runat="server">
            
              <asp:Image ID="imgLogo" runat="server" ImageUrl="~/images/logo.svg" class="form-signin-heading" />
        </h2>
    
        <asp:Label ID="lblUsername" runat="server" ForeColor="White">Username</asp:Label>
        <asp:TextBox ID="txtUserName" runat="server" class="form-control" ></asp:TextBox>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Password" ForeColor="White"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Label ID="lblUserType" runat="server" Text="User Type" ForeColor="White"></asp:Label>
        <br />


        <asp:DropDownList ID="dropDownListUser" runat="server" class="form-control" >
            <asp:ListItem>Manager</asp:ListItem>
            <asp:ListItem>Assistant</asp:ListItem>
        </asp:DropDownList>
  

        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
  

        <asp:Button ID="btnSignIn" runat="server" Text="Login" class="btn btn-lg btn-primary btn-block" OnClick="btnSignIn_Click1"/>
        <asp:Button ID="btnSearch" runat="server" Text="Search Books" class="btn btn-lg btn-primary btn-block" ForeColor="White" BackColor="#9459A4"  OnClick="btnSearch_Click" />

    </form>
        </div>
</div>
    
    
</body>
	<script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</html>