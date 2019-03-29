<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listBooksOnLoan.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body >
    <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>List of Books in Loan</h1>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <form id="form1" runat="server">
                <asp:SqlDataSource ID="sqlDataSourceBookList" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblAuthor] WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName" InsertCommand="INSERT INTO [tblAuthor] ([authorId], [authorName]) VALUES (@authorId, @authorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT tblCopies.copyId, tblCopies.loanStatus, tblLoan.issueDate, tblLoan.dueDate, tblMember.memberFirstName, tblMember.memberLastName FROM tblCopies INNER JOIN tblLoan ON tblCopies.copyId = tblLoan.tblCopies_copyId INNER JOIN tblMember ON tblLoan.tblMember_memberId = tblMember.memberId WHERE (tblCopies.loanStatus = 'Yes') ORDER BY tblLoan.issueDate" UpdateCommand="UPDATE [tblAuthor] SET [authorName] = @authorName WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName">
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
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDataSourceBookList" ForeColor="Black" DataKeyNames="copyId">
                    <Columns>
                        <asp:TemplateField HeaderText="copyId" SortExpression="copyId">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("copyId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("copyId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="loanStatus" SortExpression="loanStatus">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("loanStatus") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("loanStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="issueDate" SortExpression="issueDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("issueDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("issueDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="dueDate" SortExpression="dueDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("dueDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("dueDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="memberFirstName" SortExpression="memberFirstName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="memberLastName" SortExpression="memberLastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("memberLastName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("memberLastName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                
    </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </div>
    
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>