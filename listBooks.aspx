<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listBooks.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body >
        <div>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h1>List of All Books</h1>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="table-responsive">
                                    <form id="form1" runat="server">
                <asp:SqlDataSource ID="sqlDataSourceBookList" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblAuthor] WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName" InsertCommand="INSERT INTO [tblAuthor] ([authorId], [authorName]) VALUES (@authorId, @authorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT tblAuthor.authorName, tblBook.bookId, tblBook.bookName, tblBook.allow18, tblBook.publishedDate, tblBook.bookEdition, tblBook.tblPublisher_publisherId, tblBook.tblBookCategory_bookCategoryId, tblBook.tblBookAuthor_tblAuthor_authorId, tblCopies.loanStatus, tblCopies.copyId, tblBookCategory.bookCategoryType, tblPublisher.publisherName FROM tblAuthor INNER JOIN tblBookAuthor ON tblAuthor.authorId = tblBookAuthor.tblAuthor_authorId INNER JOIN tblBook ON tblBookAuthor.tblAuthor_authorId = tblBook.tblBookAuthor_tblAuthor_authorId AND tblBookAuthor.tblBook_bookId = tblBook.bookId INNER JOIN tblBookCategory ON tblBook.tblBookCategory_bookCategoryId = tblBookCategory.bookCategoryId INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblPublisher ON tblBook.tblPublisher_publisherId = tblPublisher.publisherId order by publishedDate" UpdateCommand="UPDATE [tblAuthor] SET [authorName] = @authorName WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName">
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
                        <asp:TemplateField HeaderText="Author Name" SortExpression="authorName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("authorName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("authorName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Id" SortExpression="bookId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("bookId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("bookId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Name" SortExpression="bookName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("bookName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("bookName") %>'></asp:Label>
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
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("publishedDate") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("publishedDate", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Edition" SortExpression="bookEdition">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("bookEdition") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("bookEdition") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Publisher Id" SortExpression="tblPublisher_publisherId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("tblPublisher_publisherId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("tblPublisher_publisherId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Category Id" SortExpression="tblBookCategory_bookCategoryId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("tblBookCategory_bookCategoryId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("tblBookCategory_bookCategoryId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Author Id" SortExpression="tblBookAuthor_tblAuthor_authorId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("tblBookAuthor_tblAuthor_authorId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("tblBookAuthor_tblAuthor_authorId") %>'></asp:Label>
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
                        <asp:TemplateField HeaderText="Copy Id" SortExpression="copyId">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("copyId") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("copyId") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Book Category Type" SortExpression="bookCategoryType">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("bookCategoryType") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("bookCategoryType") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Publisher Name" SortExpression="publisherName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("publisherName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("publisherName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                        <ControlStyle BackColor="#1CB89A" CssClass="btn btn-default" ForeColor="White" />
                        </asp:CommandField>
                    </Columns>
                </asp:GridView>
                
    </form>
                                </div>
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