<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listMemberDetails.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>List of Members</h1>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <form id="form1" runat="server">
                <asp:SqlDataSource ID="sqlDataSourceBookList" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblAuthor] WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName" InsertCommand="INSERT INTO [tblAuthor] ([authorId], [authorName]) VALUES (@authorId, @authorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT tblBook.bookId, tblBook.bookName, tblBook.allow18, tblBook.publishedDate, tblBook.bookEdition, tblCopies.copyId, tblCopies.loanStatus, tblMemberType.memberType, tblMemberType.quantityAllowed, tblMember.memberId, tblMember.memberFirstName, tblMember.memberLastName, tblMember.memberAddress, tblMember.memeberDOB, tblMember.tblMemberType_memberTypeId, tblLoan.loanId, tblLoan.issueDate, tblLoan.dueDate, tblLoan.loanCharge, tblLoan.penaltyCharge, tblLoan.returnDate, tblLoan.totalPenaltyCharge FROM tblBook INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblLoan ON tblCopies.copyId = tblLoan.tblCopies_copyId INNER JOIN tblMember ON tblLoan.tblMember_memberId = tblMember.memberId INNER JOIN tblMemberType ON tblMember.tblMemberType_memberTypeId = tblMemberType.memberTypeId ORDER BY tblMember.memberFirstName" UpdateCommand="UPDATE [tblAuthor] SET [authorName] = @authorName WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName">
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
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDataSourceBookList" ForeColor="Black">
                        <Columns>
                            <asp:TemplateField HeaderText="Book Id" SortExpression="bookId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("bookId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("bookId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Book Name" SortExpression="bookName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Allow 18?" SortExpression="allow18">
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("allow18") %>' />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("allow18") %>' Enabled="false" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Published Date" SortExpression="publishedDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("publishedDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("publishedDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Book Edition" SortExpression="bookEdition">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("bookEdition") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("bookEdition") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Copy Id" SortExpression="copyId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("copyId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("copyId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Loan Status" SortExpression="loanStatus">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("loanStatus") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("loanStatus") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Type" SortExpression="memberType">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("memberType") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("memberType") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity Allowed" SortExpression="quantityAllowed">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("quantityAllowed") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("quantityAllowed") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Id" SortExpression="memberId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("memberId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("memberId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member First Name" SortExpression="memberFirstName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Last Name" SortExpression="memberLastName">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("memberLastName") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("memberLastName") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Member Address" SortExpression="memberAddress">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("memberAddress") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("memberAddress") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Memeber DOB" SortExpression="memeberDOB">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("memeberDOB") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("memeberDOB", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Loan Id" SortExpression="loanId">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("loanId") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label14" runat="server" Text='<%# Bind("loanId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Issue Date" SortExpression="issueDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("issueDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label15" runat="server" Text='<%# Bind("issueDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Due Date" SortExpression="dueDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox16" runat="server" Text='<%# Bind("dueDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label16" runat="server" Text='<%# Bind("dueDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Loan Charge" SortExpression="loanCharge">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox17" runat="server" Text='<%# Bind("loanCharge") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label17" runat="server" Text='<%# Bind("loanCharge") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Penalty Charge" SortExpression="penaltyCharge">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox18" runat="server" Text='<%# Bind("penaltyCharge") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label18" runat="server" Text='<%# Bind("penaltyCharge") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Return Date" SortExpression="returnDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox19" runat="server" Text='<%# Bind("returnDate") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label19" runat="server" Text='<%# Bind("returnDate", "{0:d}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total Penalty Charge" SortExpression="totalPenaltyCharge">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox20" runat="server" Text='<%# Bind("totalPenaltyCharge") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label20" runat="server" Text='<%# Bind("totalPenaltyCharge") %>'></asp:Label>
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