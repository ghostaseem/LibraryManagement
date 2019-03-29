<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addBooks.aspx.cs" Inherits="addBooks" %>

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
                <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblBook] WHERE [bookId] = @original_bookId AND [bookName] = @original_bookName AND [allow18] = @original_allow18 AND [publishedDate] = @original_publishedDate AND (([bookEdition] = @original_bookEdition) OR ([bookEdition] IS NULL AND @original_bookEdition IS NULL)) AND [tblPublisher_publisherId] = @original_tblPublisher_publisherId AND [tblBookCategory_bookCategoryId] = @original_tblBookCategory_bookCategoryId" InsertCommand="INSERT INTO [tblBook] ([bookId], [bookName], [allow18], [publishedDate], [bookEdition], [tblPublisher_publisherId], [tblBookCategory_bookCategoryId]) VALUES (@bookId, @bookName, @allow18, @publishedDate, @bookEdition, @tblPublisher_publisherId, @tblBookCategory_bookCategoryId)


" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT tblBook.bookId, tblBook.bookName, tblBook.allow18, tblBook.publishedDate, tblBook.bookEdition, tblBook.tblPublisher_publisherId, tblBook.tblBookCategory_bookCategoryId, tblBook.tblBookAuthor_tblAuthor_authorId, tblAuthor.authorName, tblPublisher.publisherName FROM tblBook INNER JOIN tblPublisher ON tblBook.tblPublisher_publisherId = tblPublisher.publisherId INNER JOIN tblBookAuthor ON tblBook.tblBookAuthor_tblAuthor_authorId = tblBookAuthor.tblAuthor_authorId AND tblBook.bookId = tblBookAuthor.tblBook_bookId INNER JOIN tblAuthor ON tblBookAuthor.tblAuthor_authorId = tblAuthor.authorId" UpdateCommand="UPDATE [tblBook] SET [bookName] = @bookName, [allow18] = @allow18, [publishedDate] = @publishedDate, [bookEdition] = @bookEdition, [tblPublisher_publisherId] = @tblPublisher_publisherId, [tblBookCategory_bookCategoryId] = @tblBookCategory_bookCategoryId WHERE [bookId] = @original_bookId AND [bookName] = @original_bookName AND [allow18] = @original_allow18 AND [publishedDate] = @original_publishedDate AND (([bookEdition] = @original_bookEdition) OR ([bookEdition] IS NULL AND @original_bookEdition IS NULL)) AND [tblPublisher_publisherId] = @original_tblPublisher_publisherId AND [tblBookCategory_bookCategoryId] = @original_tblBookCategory_bookCategoryId">
                    <DeleteParameters>
                        <asp:Parameter Name="original_bookId" Type="String" />
                        <asp:Parameter Name="original_bookName" Type="String" />
                        <asp:Parameter Name="original_allow18" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="original_publishedDate" />
                        <asp:Parameter Name="original_bookEdition" Type="String" />
                        <asp:Parameter Name="original_tblPublisher_publisherId" Type="String" />
                        <asp:Parameter Name="original_tblBookCategory_bookCategoryId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="bookId" Type="String" />
                        <asp:Parameter Name="bookName" Type="String" />
                        <asp:Parameter Name="allow18" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="publishedDate" />
                        <asp:Parameter Name="bookEdition" Type="String" />
                        <asp:Parameter Name="tblPublisher_publisherId" Type="String" />
                        <asp:Parameter Name="tblBookCategory_bookCategoryId" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="bookName" Type="String" />
                        <asp:Parameter Name="allow18" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="publishedDate" />
                        <asp:Parameter Name="bookEdition" Type="String" />
                        <asp:Parameter Name="tblPublisher_publisherId" Type="String" />
                        <asp:Parameter Name="tblBookCategory_bookCategoryId" Type="String" />
                        <asp:Parameter Name="original_bookId" Type="String" />
                        <asp:Parameter Name="original_bookName" Type="String" />
                        <asp:Parameter Name="original_allow18" Type="Boolean" />
                        <asp:Parameter DbType="Date" Name="original_publishedDate" />
                        <asp:Parameter Name="original_bookEdition" Type="String" />
                        <asp:Parameter Name="original_tblPublisher_publisherId" Type="String" />
                        <asp:Parameter Name="original_tblBookCategory_bookCategoryId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            <h1>Add Books</h1>
                <asp:FormView ID="formAddBook" runat="server" DataKeyNames="bookId" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black" OnPageIndexChanging="formAddBook_PageIndexChanging">
                    <EditItemTemplate>
                        bookId:
                        <asp:Label ID="bookIdLabel1" runat="server" Text='<%# Eval("bookId") %>' />
                        <br />
                        bookName:
                        <asp:TextBox ID="bookNameTextBox" runat="server" Text='<%# Bind("bookName") %>' />
                        <br />
                        allow18:
                        <asp:CheckBox ID="allow18CheckBox" runat="server" Checked='<%# Bind("allow18") %>' />
                        <br />
                        publishedDate:
                        <asp:TextBox ID="publishedDateTextBox" runat="server" Text='<%# Bind("publishedDate") %>' />
                        <br />
                        bookEdition:
                        <asp:TextBox ID="bookEditionTextBox" runat="server" Text='<%# Bind("bookEdition") %>' />
                        <br />
                        tblPublisher_publisherId:
                        <asp:TextBox ID="tblPublisher_publisherIdTextBox" runat="server" Text='<%# Bind("tblPublisher_publisherId") %>' />
                        <br />
                        tblBookCategory_bookCategoryId:
                        <asp:TextBox ID="tblBookCategory_bookCategoryIdTextBox" runat="server" Text='<%# Bind("tblBookCategory_bookCategoryId") %>' />
                        <br />
                        tblBookAuthor_tblAuthor_authorId:
                        <asp:TextBox ID="tblBookAuthor_tblAuthor_authorIdTextBox" runat="server" Text='<%# Bind("tblBookAuthor_tblAuthor_authorId") %>' />
                        <br />
                        authorName:
                        <asp:TextBox ID="authorNameTextBox" runat="server" Text='<%# Bind("authorName") %>' />
                        <br />
                        publisherName:
                        <asp:TextBox ID="publisherNameTextBox" runat="server" Text='<%# Bind("publisherName") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                            <div class="col-sm-6">
                        Book Id:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="bookIdTextBox" runat="server" class="form-control" Text='<%# Bind("bookId") %>' />
                            <br />     </div>
                       
                            <div class="col-sm-6">
                        Book Name:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="bookNameTextBox" class="form-control" runat="server" Text='<%# Bind("bookName") %>' />
                              <br />  </div>
                       
                            <div class="col-sm-6">

                        Allow above 18?
                                </div>
                            <div class="col-sm-6">
                        <asp:CheckBox ID="allow18CheckBox"  runat="server" Checked='<%# Bind("allow18") %>' />
                             <br />   <br /> </div>
                        
                            <div class="col-sm-6">
                        Published Date:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="publishedDateTextBox" class="form-control" runat="server" Text='<%# Bind("publishedDate") %>' />
                              <br />  </div>
                        
                            <div class="col-sm-6">
                        Book Edition:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="bookEditionTextBox" class="form-control" runat="server" Text='<%# Bind("bookEdition") %>' />
                          <br />      </div>
                        
                            <div class="col-sm-6">
                        Book Category:
                                </div>
                            <div class="col-sm-6">
                        <asp:DropDownList ID="tblBookCategory_bookCategoryIdTextBox" class="form-control" runat="server" DataTextField='<%# Bind("tblBookCategory_bookCategoryId") %>' DataValueField="bookCategoryType" DataSourceID="SqlDataSource3" ForeColor="Black" />
                        </div>
                        <div class="col-sm-6"></div>
                        <div class="col-sm-6">
                        <asp:Button ID="btnAddCategory" runat="server" class="btn btn-default" Text="Add Category" ForeColor="White" BackColor="#1cb898" /> 
                            <br />
                        </div>
                        <div class="col-sm-6">
                        Author Name:
                        </div>
                        <div class="col-sm-6">
                        <asp:DropDownList ID="authorNameTextBox"   runat="server" DataTextField='<%# Bind("authorName") %>' DataValueField="authorname" class="form-control" ForeColor="Black" DataSourceID="SqlDataSource1" />
                        <br /> </div>
                        <div class="col-sm-6"></div>
                        <div class="col-sm-6">
                        <asp:Button ID="btnAddAuthor" class="btn btn-default" runat="server" Text="Add Author" ForeColor="White" BackColor="#1cb898" /><br />
                            </div>
                        <div class="col-sm-6">
                        Publisher Name:
                            </div>
                        <div class="col-sm-6">
                        <asp:DropDownList ID="publisherNameDD" class="form-control" runat="server" DataTextField='<%# Bind("publisherName") %>' DataValueField="publishername" ForeColor="Black" DataSourceID="SqlDataSource2" />
                        <br />
                            </div>
                        <div class="col-sm-6"></div>
                        <div class="col-sm-6">
                        <asp:Button ID="btnAddPublisher" class="btn btn-default" runat="server" Text="Add Publisher" ForeColor="White" BackColor="#1cb898" />
                        <br />
                            </div>
                        <asp:Button ID="InsertButton" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                           
                    </InsertItemTemplate>
                    <ItemTemplate>
                        bookId:
                        <asp:Label ID="bookIdLabel" runat="server" Text='<%# Eval("bookId") %>' />
                        <br />
                        bookName:
                        <asp:Label ID="bookNameLabel"  runat="server" Text='<%# Bind("bookName") %>' />
                        <br />
                        allow18:
                        <asp:CheckBox ID="allow18CheckBox" runat="server" Checked='<%# Bind("allow18") %>' Enabled="false" />
                        <br />
                        publishedDate:
                        <asp:Label ID="publishedDateLabel" runat="server" Text='<%# Bind("publishedDate") %>' />
                        <br />
                        bookEdition:
                        <asp:Label ID="bookEditionLabel" runat="server" Text='<%# Bind("bookEdition") %>' />
                        <br />
                        tblPublisher_publisherId:
                        <asp:Label ID="tblPublisher_publisherIdLabel" runat="server" Text='<%# Bind("tblPublisher_publisherId") %>' />
                        <br />
                        tblBookCategory_bookCategoryId:
                        <asp:Label ID="tblBookCategory_bookCategoryIdLabel" runat="server" Text='<%# Bind("tblBookCategory_bookCategoryId") %>' />
                        <br />
                        tblBookAuthor_tblAuthor_authorId:&nbsp;<asp:Label ID="tblBookAuthor_tblAuthor_authorIdLabel" runat="server" Text='<%# Bind("tblBookAuthor_tblAuthor_authorId") %>' />
                        <br />
                        authorName:
                        <asp:Label ID="authorNameLabel" runat="server" Text='<%# Bind("authorName") %>' />
                        <br />
                        
                        publisherName:
                        <br />
                        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        <asp:Label ID="publisherNameLabel" runat="server" Text='<%# Bind("publisherName") %>' />
                        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                    </ItemTemplate>
                </asp:FormView>
                
                
               
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT [authorName] FROM [tblAuthor]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT [publisherName] FROM [tblPublisher]"></asp:SqlDataSource>
                
                
               
                
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT [bookCategoryType] FROM [tblBookCategory]"></asp:SqlDataSource>
                
                
               
                
    </form>
            </div>
    </div>
    <div class="col-sm-1"></div>
    
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>