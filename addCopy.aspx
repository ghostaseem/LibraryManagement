<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addCopy.aspx.cs" Inherits="addBooks" %>

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
        <div class="form-horizontal"
            ><form id="form1" runat="server" class="formBar">
                <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblCopies] WHERE [copyId] = @original_copyId AND [loanStatus] = @original_loanStatus AND [tblBook_bookId] = @original_tblBook_bookId" InsertCommand="INSERT INTO [tblCopies] ([copyId], [loanStatus], [tblBook_bookId]) VALUES (@copyId, @loanStatus, @tblBook_bookId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblCopies]" UpdateCommand="UPDATE [tblCopies] SET [loanStatus] = @loanStatus, [tblBook_bookId] = @tblBook_bookId WHERE [copyId] = @original_copyId AND [loanStatus] = @original_loanStatus AND [tblBook_bookId] = @original_tblBook_bookId">
                    <DeleteParameters>
                        <asp:Parameter Name="original_copyId" Type="String" />
                        <asp:Parameter Name="original_loanStatus" Type="String" />
                        <asp:Parameter Name="original_tblBook_bookId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="copyId" Type="String" />
                        <asp:Parameter Name="loanStatus" Type="String" />
                        <asp:Parameter Name="tblBook_bookId" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="loanStatus" Type="String" />
                        <asp:Parameter Name="tblBook_bookId" Type="String" />
                        <asp:Parameter Name="original_copyId" Type="String" />
                        <asp:Parameter Name="original_loanStatus" Type="String" />
                        <asp:Parameter Name="original_tblBook_bookId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <h1>Add Copies</h1>
                <asp:FormView ID="formAddBook" runat="server" DataKeyNames="copyId" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black">
                    <EditItemTemplate>
                        copyId:
                        <asp:Label ID="copyIdLabel1" runat="server" Text='<%# Eval("copyId") %>' />
                        <br />
                        loanStatus:
                        <asp:TextBox ID="loanStatusTextBox" runat="server" Text='<%# Bind("loanStatus") %>' />
                        <br />
                        tblBook_bookId:
                        <asp:TextBox ID="tblBook_bookIdTextBox" runat="server" Text='<%# Bind("tblBook_bookId") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <div class="col-sm-6">
                        Copy ID:
                            </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="copyIdTextBox" class="form-control" runat="server" Text='<%# Bind("copyId") %>' />
                        <br />
                                </div>
                        <div class="col-sm-6">
                        Loan Status:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="loanStatusTextBox" class="form-control" runat="server" Text='<%# Bind("loanStatus") %>' />
                        <br />

                            </div>
                        <div class="col-sm-6">
                        Book ID:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="tblBook_bookIdTextBox" class="form-control" runat="server" Text='<%# Bind("tblBook_bookId") %>' />
                        <br /> 
                                </div>
                        <asp:Button ID="InsertButton" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        copyId:
                        <asp:Label ID="copyIdLabel" runat="server" Text='<%# Eval("copyId") %>' />
                        <br />
                        loanStatus:
                        <asp:Label ID="loanStatusLabel"  runat="server" Text='<%# Bind("loanStatus") %>' />
                        <br />
                        tblBook_bookId:&nbsp;<asp:Label ID="tblBook_bookIdLabel" runat="server" Text='<%# Bind("tblBook_bookId") %>' />
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