<%@ Page Language="C#" AutoEventWireup="true" CodeFile="listOfOldBooks.aspx.cs" Inherits="addBooks" %>

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
        <form id="form1" runat="server" class="formBar">
             <h2>List of Old Books</h2>
 <asp:SqlDataSource ID="sqlDataSourceBookList" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblAuthor] WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName" InsertCommand="INSERT INTO [tblAuthor] ([authorId], [authorName]) VALUES (@authorId, @authorName)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT tblBookCategory.bookCategoryType, tblCopies.loanStatus, tblCopies.book_entry, tblBook.bookName, tblBook.publishedDate, tblBook.bookEdition, tblCopies.copyId FROM tblBookCategory INNER JOIN tblBook ON tblBookCategory.bookCategoryId = tblBook.tblBookCategory_bookCategoryId INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblLoan ON tblCopies.copyId = tblLoan.tblCopies_copyId WHERE (tblCopies.book_entry &lt;= DATEADD(year, - 1, GETDATE()))" UpdateCommand="UPDATE [tblAuthor] SET [authorName] = @authorName WHERE [authorId] = @original_authorId AND [authorName] = @original_authorName">
    
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

 <asp:BoundField DataField="bookCategoryType" HeaderText="Books Category Type" SortExpression="bookCategoryType" />

 <asp:BoundField DataField="loanStatus" HeaderText="Loan Status" SortExpression="loanStatus" />

 <asp:BoundField DataField="book_entry" HeaderText="Book Entry" SortExpression="book_entry" />

 <asp:BoundField DataField="bookName" HeaderText="Book Name" SortExpression="bookName" />

 <asp:BoundField DataField="publishedDate" HeaderText="Publish Dates" SortExpression="publishedDate" DataFormatString="{0:d}" />

 <asp:BoundField DataField="bookEdition" HeaderText="Edition" SortExpression="bookEdition" />

 <asp:BoundField DataField="copyId" HeaderText="Copy ID" SortExpression="copyId" ReadOnly="True" />

 </Columns>

 </asp:GridView>

 



 <asp:Button ID="btnDelete" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" OnClick="btnDelete_Click" Text="Delete All Book" />

 



 </form>
    </div>
    <div class="col-sm-1"></div>
 
 

</body>

<script src="js/jquery.min.js"></script>

<script src="js/bootstrap.min.js"></script>
 
</html>
