<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchLoanMember.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body class="container">
    <div class="col-sm-2"></div>
    <div class="col-sm-8">
        <div class="form-horizontal">
             <form id="form1" runat="server" class="formBar">
                <p>
                    <asp:Label ID="lblSearchBook" runat="server" ForeColor="Black" style="font-size: xx-large" Text="Search Book by Member ID"></asp:Label>
                </p>
                 <div class="col-sm-6">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Search by member number:"></asp:Label>
                     </div>
                 <div class="col-sm-6">
                <asp:TextBox ID="txtSearchMember" runat="server"></asp:TextBox>
                <br /> </div>
                <asp:Button ID="btnSearch" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" OnClick="btnSearch_Click" Text="Search" />
                &nbsp;<asp:Button ID="btnClear" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" OnClick="btnClear_Click" Text="Clear" />
                <br />
                <br />
                <asp:SqlDataSource ID="sqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT tblMember.memberId, tblMember.memberFirstName, tblMember.memberLastName, tblBook.bookName, tblCopies.loanStatus, tblLoan.issueDate, tblLoan.dueDate, tblLoan.loanCharge FROM tblBook INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblLoan ON tblCopies.copyId = tblLoan.tblCopies_copyId INNER JOIN tblMember ON tblLoan.tblMember_memberId = tblMember.memberId where issueDate&gt;= DATEADD(day, -31, GETDATE())" FilterExpression="memberId LIKE '%{0}%'">
                    <FilterParameters>
                        <asp:ControlParameter Name="memberId" ControlID="txtSearchMember" PropertyName="Text" DefaultValue="@@@@" />
                    </FilterParameters>
                </asp:SqlDataSource>
                <br />

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDataSourceBook" ForeColor="Black" DataKeyNames="memberId">
                    <Columns>
                        <asp:TemplateField HeaderText="memberId" SortExpression="memberId">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("memberId") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("memberId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="First Name" SortExpression="memberFirstName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Name" SortExpression="memberLastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("memberLastName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("memberLastName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Name" SortExpression="bookName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Loan Status" SortExpression="loanStatus">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("loanStatus") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("loanStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Issue Date" SortExpression="issueDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("issueDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("issueDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="DueDate" SortExpression="dueDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("dueDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("dueDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Loan Charge" SortExpression="loanCharge">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("loanCharge") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("loanCharge") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                
    </form>
        </div>
    </div>
    <div class="col-sm-2"></div>

   
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>