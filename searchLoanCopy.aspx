﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchLoanCopy.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body class="container">
    <div class="col-sm-0"></div>
    <div class="col-sm-12">
        <div class="form-horizontal">
             <form id="form1" runat="server" class="formBar">
                <p>
                    <asp:Label ID="lblSearchBook" runat="server" ForeColor="Black" style="font-size: xx-large" Text="Return Book"></asp:Label>
                </p>
                 <div class="col-sm-6">
                <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Search by copy number:"></asp:Label>
                     </div>
                 <div class="col-sm-6">
                <asp:TextBox ID="txtSearchCopy" class="form-control" runat="server"></asp:TextBox>
                <br /> </div>

                <asp:Button ID="btnSearch" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" OnClick="btnSearch_Click" Text="Search" />
                &nbsp;<asp:Button ID="btnClear" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" OnClick="btnClear_Click" Text="Clear" />
                <br />
                <br />
                <asp:SqlDataSource ID="sqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT tblMember.memberFirstName, tblMember.memberLastName, tblMember.memberAddress, tblMember.memeberDOB, tblLoan.dueDate, tblLoan.issueDate, tblLoan.loanId, tblLoan.returnDate, tblCopies.copyId, tblCopies.loanStatus, tblBook.bookName FROM tblBook INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblLoan ON tblCopies.copyId = tblLoan.tblCopies_copyId INNER JOIN tblMember ON tblLoan.tblMember_memberId = tblMember.memberId" FilterExpression="copyId LIKE '%{0}%'">
                    <FilterParameters>
                        <asp:ControlParameter Name="copyId" ControlID="txtSearchCopy" PropertyName="Text" DefaultValue="@@@@" />
                    </FilterParameters>
                </asp:SqlDataSource>
                <br />

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDataSourceBook" ForeColor="Black">
                    <Columns>
                        <asp:TemplateField HeaderText="memberFirstName" SortExpression="memberFirstName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("memberFirstName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="memberLastName" SortExpression="memberLastName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("memberLastName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("memberLastName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="memberAddress" SortExpression="memberAddress">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("memberAddress") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("memberAddress") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="memeberDOB" SortExpression="memeberDOB">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("memeberDOB") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("memeberDOB", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="dueDate" SortExpression="dueDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("dueDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("dueDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="issueDate" SortExpression="issueDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("issueDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("issueDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="loanId" SortExpression="loanId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("loanId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("loanId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="returnDate" SortExpression="returnDate">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("returnDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("returnDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="copyId" SortExpression="copyId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("copyId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("copyId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="loanStatus" SortExpression="loanStatus">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("loanStatus") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("loanStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="bookName" SortExpression="bookName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                
    </form>
        </div>
    </div>
    <div class="col-sm-0"></div>

   
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>