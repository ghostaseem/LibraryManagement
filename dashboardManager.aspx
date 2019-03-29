<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dashboardManager.aspx.cs" Inherits="dashboardManager" %>

<!DOCTYPE html>
<html>
<head>
	<title>Book Light - Library Management System</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">

        <div id="page-wrapper">
                <div class="col-lg-12">
                    <h1 class="page-header">Booklight - Library Management System</h1>

                <!-- /.col-lg-12 -->
            </div>
            &nbsp;&nbsp;&nbsp; Welcome,
            <!-- /.row -->
                <asp:Label ID="lblUsername" runat="server"></asp:Label>
            <div class="row">
                <div class="col-lg-2 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-right">
                                    <div class="huge">Add Books</div>
                                </div>
                            </div>
                        </div>

                           <a href="addBooks.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Add Books</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                        <a href="addCopy.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Add Copies</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                        <a href="addAuthor.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Add Author</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                        <a href="addPublisher.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Add Publisher</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                     

                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-right">
                                    <div class="huge">Books Transaction</div>
                                </div>
                            </div>
                        </div>
                        <a href="issueBooks.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Issue Books</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                         <a href="returnBook.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Retun Books</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-right">
                                    <div class="huge">Add Member</div>
                                </div>
                            </div>
                        </div>
                        <a href="addMembers.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Add Members</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-right">
                                    <div class="huge">Search</div>
                                    <div class="huge"></div>
                                </div>
                            </div>
                        </div>
                        <a href="searchBook.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Search Books</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                        <a href="searchLoanMember.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Search Loan Books by Member </span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                        <a href="searchLoanCopy.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Search Loaned Book Copy</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-2 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-right">
                                    <div class="huge">View </div>
                                    <div class="huge"></div>
                                </div>
                            </div>
                        </div>

                           <a href="listBooksOnLoan.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Loaned Books List</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                         <a href="inactivemember.html">
                            <div class="panel-footer">
                                <span class="pull-left">Inactive Member</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                           <a href="inactivebooks.html">
                            <div class="panel-footer">
                                <span class="pull-left">Inactive Books</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-2 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-12 text-right">
                                    <div class="huge">User Management</div>
                                </div>
                            </div>
                        </div>
                        <a href="addUser.aspx">
                            <div class="panel-footer">
                                <span class="pull-left">Add User</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                        <a href="manageuser.html">
                            <div class="panel-footer">
                                <span class="pull-left">Manage User</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>

                    </div>
                </div>
            </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           <h2> Inactive Book</h2></div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="copyId" DataSourceID="SqlDataSource1">
                                            <Columns>
                                                <asp:BoundField DataField="bookName" HeaderText="Books Name" SortExpression="bookName" />
                                                <asp:BoundField DataField="issueDate" DataFormatString="{0:d}" HeaderText="Issue Date" SortExpression="issueDate" />
                                                <asp:BoundField DataField="copyId" HeaderText="Copy ID" ReadOnly="True" SortExpression="copyId" />
                                            </Columns>
                                        </asp:GridView>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.col-lg-4 (nested) -->
                                <div class="col-lg-8">
                                    &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT tblBook.bookName, tblLoan.issueDate, tblCopies.copyId FROM tblBook INNER JOIN tblCopies ON tblBook.bookId = tblCopies.tblBook_bookId INNER JOIN tblLoan ON tblCopies.copyId = tblLoan.tblCopies_copyId WHERE (tblLoan.issueDate &lt;= DATEADD(day, - 31, GETDATE()))"></asp:SqlDataSource>
                                </div>
                                <!-- /.col-lg-8 (nested) -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
            <div class="panel panel-default">
                 <div class="panel-heading">
                            <h2>Inactive Member </h2></div>
                                <div class="panel-body">
                                    <div class="row">
                                         <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="copyId" DataSourceID="SqlDataSource2">
                                            <Columns>
                                                <asp:BoundField DataField="issueDate" DataFormatString="{0:d}" HeaderText="Issue Date" SortExpression="issueDate" />
                                                <asp:BoundField DataField="bookName" HeaderText="Books Name" SortExpression="bookName" />
                                                <asp:BoundField DataField="publishedDate" HeaderText="Publish Date" SortExpression="publishedDate" DataFormatString="{0:d}"></asp:BoundField>
                                                <asp:BoundField DataField="bookEdition" HeaderText="Book Edition" SortExpression="bookEdition" />
                                                <asp:BoundField DataField="copyId" HeaderText="Copy ID" ReadOnly="True" SortExpression="copyId" />
                                                <asp:BoundField DataField="memberFirstName" HeaderText="First Name" SortExpression="memberFirstName" />
                                                <asp:BoundField DataField="memberLastName" HeaderText="Last Name" SortExpression="memberLastName" />
                                                <asp:BoundField DataField="memberAddress" HeaderText="Address" SortExpression="memberAddress" />
                                                <asp:BoundField DataField="memeberDOB" DataFormatString="{0:d}" HeaderText="DOB" SortExpression="memeberDOB" />
                                                <asp:BoundField DataField="Days_for_LastLoan" HeaderText="Last Loan Date" ReadOnly="True" SortExpression="Days_for_LastLoan" />
                                            </Columns>
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT tblLoan.issueDate, tblBook.bookName, tblBook.publishedDate, tblBook.bookEdition, tblCopies.copyId, tblMember.memberFirstName, tblMember.memberLastName, tblMember.memberAddress, tblMember.memeberDOB, DATEDIFF(day, issueDate, GETDATE()) AS Days_for_LastLoan FROM tblLoan INNER JOIN tblMember ON tblLoan.tblMember_memberId = tblMember.memberId INNER JOIN tblCopies ON tblLoan.tblCopies_copyId = tblCopies.copyId INNER JOIN tblBook ON tblCopies.tblBook_bookId = tblBook.bookId
WHERE issueDate &lt;= DATEADD(day, -31, GETDATE()) order by issueDate"></asp:SqlDataSource>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                    </div>
                                </div>
                               
            </div>
                </div>   
        </div>
        <!-- /#page-wrapper -->
    </form>

</body>
</html>