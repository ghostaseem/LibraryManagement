<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addPublisher.aspx.cs" Inherits="addBooks" %>

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
                <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblPublisher] WHERE [publisherId] = @original_publisherId AND [publisherName] = @original_publisherName" InsertCommand="INSERT INTO [tblPublisher] ([publisherId], [publisherName]) VALUES (@publisherId, @publisherName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblPublisher]" UpdateCommand="UPDATE [tblPublisher] SET [publisherName] = @publisherName WHERE [publisherId] = @original_publisherId AND [publisherName] = @original_publisherName">
                    <DeleteParameters>
                        <asp:Parameter Name="original_publisherId" Type="String" />
                        <asp:Parameter Name="original_publisherName" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="publisherId" Type="String" />
                        <asp:Parameter Name="publisherName" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="publisherName" Type="String" />
                        <asp:Parameter Name="original_publisherId" Type="String" />
                        <asp:Parameter Name="original_publisherName" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <h1>Add Publisher</h1>
                <asp:FormView ID="formAddBook" runat="server" DataKeyNames="publisherId" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black">
                    <EditItemTemplate>
                        publisherId:
                        <asp:Label ID="publisherIdLabel1" runat="server" Text='<%# Eval("publisherId") %>' />
                        <br />
                        publisherName:
                        <asp:TextBox ID="publisherNameTextBox" runat="server" Text='<%# Bind("publisherName") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <div class="col-sm-6">
                        Publisher ID:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="publisherIdTextBox" class="form-control" runat="server" Text='<%# Bind("publisherId") %>' />
                        <br /></div>
                        <div class="col-sm-6">
                        Publisher Name:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="publisherNameTextBox" class="form-control" runat="server" Text='<%# Bind("publisherName") %>' />
                        <br /> </div>
                        <asp:Button ID="InsertButton" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        publisherId:
                        <asp:Label ID="publisherIdLabel" runat="server" Text='<%# Eval("publisherId") %>' />
                        <br />
                        publisherName:
                        <asp:Label ID="publisherNameLabel"  runat="server" Text='<%# Bind("publisherName") %>' />
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
&nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
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