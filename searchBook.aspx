<%@ Page Language="C#" AutoEventWireup="true" CodeFile="searchBook.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body class="container">
    <div class="col-sm-1"></div>
    <div class="col-sm-10">
        <div class="form-horizontal">
             <form id="form1" runat="server" class="formBar">
                <p>
                    <asp:Label ID="lblSearchBook" runat="server" ForeColor="Black" style="font-size: xx-large" Text="Search Book"></asp:Label>
                </p>
                 <div class="col-sm-6">
                <asp:Label ID="Label1" runat="server"  ForeColor="Black" Text="Search by book name:"></asp:Label>
                     </div> 
                 <div class="col-sm-6">
                <asp:TextBox ID="txtSearchBook" class="form-control" runat="server"></asp:TextBox>
                <br /> </div> <br />
                 <div class="col-sm-6">
                <asp:Label ID="Label2"  runat="server" ForeColor="Black" Text="Search by Author Name:"></asp:Label>
                     </div>
                 <div class="col-sm-6">
                <asp:TextBox ID="txtSearchAuthor" class="form-control" runat="server"></asp:TextBox>
                <br /> </div>
                 <div class="col-sm-6">
                <asp:Label ID="Label3" runat="server" ForeColor="Black" Text="Search by Publisher Name:"></asp:Label>
                     </div>
                 <div class="col-sm-6">
                <asp:TextBox ID="txtSearchPublisher" class="form-control" runat="server"></asp:TextBox>
                <br /> </div>

                <asp:Button ID="btnSearch" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" OnClick="btnSearch_Click" Text="Search" />
&nbsp;<asp:Button ID="btnClear" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" OnClick="btnClear_Click" Text="Clear" />
                <br />
                <asp:SqlDataSource ID="sqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT tblBook.bookId, tblBook.bookName, tblBook.allow18, tblBook.publishedDate, tblBook.bookEdition, tblBook.tblPublisher_publisherId, tblBook.tblBookCategory_bookCategoryId, tblAuthor.authorName, tblAuthor.authorId, tblBookCategory.bookCategoryType, tblCopies.copyId, tblPublisher.publisherName, tblCopies.loanStatus FROM tblBook INNER JOIN tblBookAuthor ON tblBook.bookId = tblBookAuthor.tblBook_bookId INNER JOIN tblAuthor ON tblBookAuthor.tblAuthor_authorId = tblAuthor.authorId INNER JOIN tblPublisher ON tblBook.tblPublisher_publisherId = tblPublisher.publisherId INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblBookCategory ON tblBook.tblBookCategory_bookCategoryId = tblBookCategory.bookCategoryId" FilterExpression="bookName LIKE '%{0}%' or authorName LIKE '%{1}%' or publisherName LIKE '%{2}%' ">
                    <FilterParameters>
                        <asp:ControlParameter Name="bookName" ControlID="txtSearchBook" PropertyName="Text" DefaultValue="@@@@" />
                        <asp:ControlParameter Name="authorName" ControlID="txtSearchAuthor" PropertyName="Text" DefaultValue="@@@@" />
                        <asp:ControlParameter Name="publisherName" ControlID="txtSearchPublisher" PropertyName="Text" DefaultValue="@@@@" />
                    </FilterParameters>
                </asp:SqlDataSource>
                <br />

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDataSourceBook" ForeColor="Black">
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
                        <asp:TemplateField HeaderText="Author Name" SortExpression="authorName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("authorName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("authorName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Category" SortExpression="bookCategoryType">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("bookCategoryType") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("bookCategoryType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Copy Id" SortExpression="copyId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("copyId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("copyId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Publisher Name" SortExpression="publisherName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("publisherName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("publisherName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Loan Status" SortExpression="loanStatus">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("loanStatus") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("loanStatus") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                
    </form>
    
            </div>
    </div>
    <div class="col-sm-1"></div>

   
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>