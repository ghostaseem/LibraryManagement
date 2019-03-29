<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addAuthor.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body class="container">
    <div class="col-sm-3"></div>
    <div class="col-sm-4">
        <div class="form-horizontal">
            <form id="form1" runat="server" class="formBar">
                    <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblAuthor] WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName" InsertCommand="INSERT INTO [tblAuthor] ([authorId], [authorName]) VALUES (@authorId, @authorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblAuthor]" UpdateCommand="UPDATE [tblAuthor] SET [authorName] = @authorName WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName">
                    <DeleteParameters>
                        <asp:Parameter Name="original_authorId" Type="String" />
                        <asp:Parameter Name="original_authorName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="authorId" Type="String" />
                        <asp:Parameter Name="authorName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="authorName" Type="String" />
                        <asp:Parameter Name="original_authorId" Type="String" />
                        <asp:Parameter Name="original_authorName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                     <h1>Add Author </h1>
        <asp:FormView ID="formAddBook" runat="server" DataKeyNames="authorId" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black" >
                    <EditItemTemplate>
                        authorId:
                        <asp:Label ID="authorIdLabel1" runat="server" Text='<%# Eval("authorId") %>' />
                        <br />
                        authorName:
                        <asp:TextBox ID="authorNameTextBox" runat="server" Text='<%# Bind("authorName") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" class="btn btn-default" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:Button ID="UpdateCancelButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    
                    <InsertItemTemplate>
                        <div class="form-group">
                        <div class="col-sm-6">
                        Author Id:
                        </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="authorIdTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("authorId") %>' />
                        </div>
                        </div>
                        <br />
                        <div class="form-group">
                            <div class="col-sm-6">
                        Author Name:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="authorNameTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("authorName") %>' />
                                </div>
                              </div>
                        <asp:Button ID="InsertButton" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        authorId:
                        <asp:Label ID="authorIdLabel" runat="server" Text='<%# Eval("authorId") %>' />
                        <br />
                        authorName:
                        <asp:Label ID="authorNameLabel"  runat="server" Text='<%# Bind("authorName") %>' />
                        <br />
                        <asp:Button ID="EditButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:Button ID="DeleteButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Delete" Text="Clear" />
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