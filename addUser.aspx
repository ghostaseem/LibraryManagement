<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addUser.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body class="container">
    <div class="col-sm-4"></div>
    <div class="col-sm-4">
        <div class="form-horizontal">
            <form id="form1" runat="server" class="formBar">
                <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblUsers] WHERE [username] = @original_username AND [password] = @original_password AND [usertype] = @original_usertype" InsertCommand="INSERT INTO [tblUsers] ([username], [password], [usertype]) VALUES (@username, @password, @usertype)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblUsers]" UpdateCommand="UPDATE [tblUsers] SET [password] = @password, [usertype] = @usertype WHERE [username] = @original_username AND [password] = @original_password AND [usertype] = @original_usertype">
                    <DeleteParameters>
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_usertype" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="usertype" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="usertype" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_usertype" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT distinct usertype FROM tblUsers"></asp:SqlDataSource>
                <h1>Add User</h1>
                <asp:FormView ID="formAddBook" runat="server" DataKeyNames="username" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black">
                    <EditItemTemplate>
                        username:
                        <asp:Label ID="usernameLabel1" runat="server" Text='<%# Eval("username") %>' />
                        <br />
                        password:
                        <asp:TextBox ID="passwordTextBox" runat="server" Text='<%# Bind("password") %>' />
                        <br />
                        usertype:
                        <asp:DropDownList ID="usertypeTextBox" runat="server" DataValueField='<%# Bind("usertype") %>' DataSourceID="SqlDataSource1" />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" class="btn btn-default" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" class="btn btn-default" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <div class="col-sm-6">
                        User Name:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="usernameTextBox" class="form-control" runat="server" Text='<%# Bind("username") %>' />
                        <br /></div>
                        <div class="col-sm-6">
                        Password:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="passwordTextBox" class="form-control" runat="server" Text='<%# Bind("password") %>' />
                        <br /> </div>
                        <div class="col-sm-6">
                        User Type:
                            </div>
                        <div class="col-sm-6">
                        
                            <asp:DropDownList ID="dropDownListUser" runat="server" class="form-control" >
            <asp:ListItem>Manager</asp:ListItem>
            <asp:ListItem>Assistant</asp:ListItem>
        </asp:DropDownList>
  
                        <asp:Button ID="InsertButton" runat="server" class="btn btn-default" ForeColor="White" BackColor="#1cb898" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" runat="server" class="btn btn-default" ForeColor="White" BackColor="#9459A4" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        username:
                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                        <br />
                        password:
                        <asp:Label ID="passwordLabel"  runat="server" Text='<%# Bind("password") %>' />
                        <br />
                        usertype::&nbsp;
                        <asp:Label ID="usertypeLabel" runat="server" Text='<%# Bind("usertype") %>' />
                        <br />
                        <asp:Button ID="EditButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:Button ID="DeleteButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:Button ID="NewButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                
    </form>
        </div>
    </div>
    <div class="col-sm-4"></div>

    
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>