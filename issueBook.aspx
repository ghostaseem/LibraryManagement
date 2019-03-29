<%@ Page Language="C#" AutoEventWireup="true" CodeFile="issueBook.aspx.cs" Inherits="addBooks" %>

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
        <div class="form-horizontal">
            <form id="form1" runat="server" class="formBar">
                <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblLoan] WHERE [loanId] = @original_loanId AND [issueDate] = @original_issueDate AND [dueDate] = @original_dueDate AND [loanCharge] = @original_loanCharge AND [penaltyCharge] = @original_penaltyCharge AND (([returnDate] = @original_returnDate) OR ([returnDate] IS NULL AND @original_returnDate IS NULL)) AND (([totalPenaltyCharge] = @original_totalPenaltyCharge) OR ([totalPenaltyCharge] IS NULL AND @original_totalPenaltyCharge IS NULL)) AND [tblCopies_copyId] = @original_tblCopies_copyId AND [tblMember_memberId] = @original_tblMember_memberId AND [tblUsers_username] = @original_tblUsers_username" InsertCommand="INSERT INTO [tblLoan] ([loanId], [issueDate], [dueDate], [loanCharge], [penaltyCharge], [returnDate], [totalPenaltyCharge], [tblCopies_copyId], [tblMember_memberId], [tblUsers_username]) VALUES (@loanId, @issueDate, @dueDate, @loanCharge, @penaltyCharge, @returnDate, @totalPenaltyCharge, @tblCopies_copyId, @tblMember_memberId, @tblUsers_username)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblLoan]" UpdateCommand="UPDATE [tblLoan] SET [issueDate] = @issueDate, [dueDate] = @dueDate, [loanCharge] = @loanCharge, [penaltyCharge] = @penaltyCharge, [returnDate] = @returnDate, [totalPenaltyCharge] = @totalPenaltyCharge, [tblCopies_copyId] = @tblCopies_copyId, [tblMember_memberId] = @tblMember_memberId, [tblUsers_username] = @tblUsers_username WHERE [loanId] = @original_loanId AND [issueDate] = @original_issueDate AND [dueDate] = @original_dueDate AND [loanCharge] = @original_loanCharge AND [penaltyCharge] = @original_penaltyCharge AND (([returnDate] = @original_returnDate) OR ([returnDate] IS NULL AND @original_returnDate IS NULL)) AND (([totalPenaltyCharge] = @original_totalPenaltyCharge) OR ([totalPenaltyCharge] IS NULL AND @original_totalPenaltyCharge IS NULL)) AND [tblCopies_copyId] = @original_tblCopies_copyId AND [tblMember_memberId] = @original_tblMember_memberId AND [tblUsers_username] = @original_tblUsers_username">
                    <DeleteParameters>
                        <asp:Parameter Name="original_loanId" Type="String" />
                        <asp:Parameter Name="original_issueDate" DbType="Date" />
                        <asp:Parameter Name="original_dueDate" DbType="Date" />
                        <asp:Parameter Name="original_loanCharge" Type="Int32" />
                        <asp:Parameter Name="original_penaltyCharge" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_returnDate" />
                        <asp:Parameter Name="original_totalPenaltyCharge" Type="Int32" />
                        <asp:Parameter Name="original_tblCopies_copyId" Type="String" />
                        <asp:Parameter Name="original_tblMember_memberId" Type="String" />
                        <asp:Parameter Name="original_tblUsers_username" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="loanId" Type="String" />
                        <asp:Parameter Name="issueDate" DbType="Date" />
                        <asp:Parameter Name="dueDate" DbType="Date" />
                        <asp:Parameter Name="loanCharge" Type="Int32" />
                        <asp:Parameter Name="penaltyCharge" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="returnDate" />
                        <asp:Parameter Name="totalPenaltyCharge" Type="Int32" />
                        <asp:Parameter Name="tblCopies_copyId" Type="String" />
                        <asp:Parameter Name="tblMember_memberId" Type="String" />
                        <asp:Parameter Name="tblUsers_username" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="issueDate" DbType="Date" />
                        <asp:Parameter Name="dueDate" DbType="Date" />
                        <asp:Parameter Name="loanCharge" Type="Int32" />
                        <asp:Parameter Name="penaltyCharge" Type="Int32" />
                        <asp:Parameter Name="returnDate" DbType="Date" />
                        <asp:Parameter Name="totalPenaltyCharge" Type="Int32" />
                        <asp:Parameter Name="tblCopies_copyId" Type="String" />
                        <asp:Parameter Name="tblMember_memberId" Type="String" />
                        <asp:Parameter Name="tblUsers_username" Type="String" />
                        <asp:Parameter Name="original_loanId" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_issueDate" />
                        <asp:Parameter DbType="Date" Name="original_dueDate" />
                        <asp:Parameter Name="original_loanCharge" Type="Int32" />
                        <asp:Parameter Name="original_penaltyCharge" Type="Int32" />
                        <asp:Parameter DbType="Date" Name="original_returnDate" />
                        <asp:Parameter Name="original_totalPenaltyCharge" Type="Int32" />
                        <asp:Parameter Name="original_tblCopies_copyId" Type="String" />
                        <asp:Parameter Name="original_tblMember_memberId" Type="String" />
                        <asp:Parameter Name="original_tblUsers_username" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <h1>Issue Books</h1>
                <asp:FormView ID="formAddBook" runat="server" DataKeyNames="loanId" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black">
                    <EditItemTemplate>
                        loanId:
                        <asp:Label ID="loanIdLabel1" runat="server" Text='<%# Eval("loanId") %>' />
                        <br />
                        issueDate:
                        <asp:TextBox ID="issueDateTextBox" runat="server" Text='<%# Bind("issueDate") %>' />
                        <br />
                        dueDate:
                        <asp:TextBox ID="dueDateTextBox" runat="server" Text='<%# Bind("dueDate") %>' />
                        <br />
                        loanCharge:
                        <asp:TextBox ID="loanChargeTextBox" runat="server" Text='<%# Bind("loanCharge") %>' />
                        <br />
                        penaltyCharge:
                        <asp:TextBox ID="penaltyChargeTextBox" runat="server" Text='<%# Bind("penaltyCharge") %>' />
                        <br />
                        returnDate:
                        <asp:TextBox ID="returnDateTextBox" runat="server" Text='<%# Bind("returnDate") %>' />
                        <br />
                        totalPenaltyCharge:
                        <asp:TextBox ID="totalPenaltyChargeTextBox" runat="server" Text='<%# Bind("totalPenaltyCharge") %>' />
                        <br />
                        tblCopies_copyId:
                        <asp:TextBox ID="tblCopies_copyIdTextBox" runat="server" Text='<%# Bind("tblCopies_copyId") %>' />
                        <br />
                        tblMember_memberId:
                        <asp:TextBox ID="tblMember_memberIdTextBox" runat="server" Text='<%# Bind("tblMember_memberId") %>' />
                        <br />
                        tblUsers_username:
                        <asp:TextBox ID="tblUsers_usernameTextBox" runat="server" Text='<%# Bind("tblUsers_username") %>' />
                        <br />
                        <asp:Button class="btn btn-default" ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button class="btn btn-default" ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <div class="col-sm-6">
                        Loan Id:
                            </div>
                         <div class="col-sm-6">
                        <asp:TextBox ID="loanIdTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("loanId") %>' />
                        <br /></div>
                         <div class="col-sm-6">
                        Issue Date:
                             </div>
                         <div class="col-sm-6">
                        <asp:TextBox ID="issueDateTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("issueDate") %>' />
                        <br /></div>
                         <div class="col-sm-6">
                        Due Date:
                             </div>
                         <div class="col-sm-6">
                        <asp:TextBox ID="dueDateTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("dueDate") %>' />
                        <br /></div>
                         <div class="col-sm-6">
                        Loan Charge:
                             </div>
                         <div class="col-sm-6">
                        <asp:TextBox ID="loanChargeTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("loanCharge") %>' />
                        <br /> </div>
                        <div class="col-sm-6">
                        Penalty Charge:
                            </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="penaltyChargeTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("penaltyCharge") %>' />
                        <br /></div>
                            <div class="col-sm-6">
                        Return Date:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="returnDateTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("returnDate") %>' />
                        <br /> </div>
                            <div class="col-sm-6">
                        Total Penalty Charge:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="totalPenaltyChargeTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("totalPenaltyCharge") %>' />
                        <br /></div>
                            <div class="col-sm-6">
                        Copy Id:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="tblCopies_copyIdTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("tblCopies_copyId") %>' />
                        <br /> </div>
                            <div class="col-sm-6">
                        Member Id:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="tblMember_memberIdTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("tblMember_memberId") %>' />
                        <br /></div>
                            <div class="col-sm-6">
                        Username:

                            </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="tblUsers_usernameTextBox" class="form-control"  runat="server" ForeColor="Black" Text='<%# Bind("tblUsers_username") %>' />
                        <br />
                                </div>
                        <asp:Button class="btn btn-default" ForeColor="White" BackColor="#1cb898" ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button class="btn btn-default" ForeColor="White" BackColor="#9459A4" ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        loanId:
                        <asp:Label ID="loanIdLabel" runat="server" Text='<%# Eval("loanId") %>' />
                        <br />
                        issueDate:
                        <asp:Label ID="issueDateLabel"  runat="server" Text='<%# Bind("issueDate") %>' />
                        <br />
                        dueDate:&nbsp;<asp:Label ID="dueDateLabel" runat="server" Text='<%# Bind("dueDate") %>' />
                        <br />
                        loanCharge:&nbsp;<asp:Label ID="loanChargeLabel" runat="server" Text='<%# Bind("loanCharge") %>' />
                        <br />
                        penaltyCharge:
                        <asp:Label ID="penaltyChargeLabel" runat="server" Text='<%# Bind("penaltyCharge") %>' />
                        <br />
                        returnDate:
                        <asp:Label ID="returnDateLabel" runat="server" Text='<%# Bind("returnDate") %>' />
                        <br />
                        totalPenaltyCharge:
                        <asp:Label ID="totalPenaltyChargeLabel" runat="server" Text='<%# Bind("totalPenaltyCharge") %>' />
                        <br />
                        tblCopies_copyId:
                        <asp:Label ID="tblCopies_copyIdLabel" runat="server" Text='<%# Bind("tblCopies_copyId") %>' />
                        <br />
                        tblMember_memberId:
                        <asp:Label ID="tblMember_memberIdLabel" runat="server" Text='<%# Bind("tblMember_memberId") %>' />
                        <br />
                        tblUsers_username:
                        <asp:Label ID="tblUsers_usernameLabel" runat="server" Text='<%# Bind("tblUsers_username") %>' />
                        <br />
                        <asp:Button class="btn btn-default" ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:Button class="btn btn-default" ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:Button class="btn btn-default" ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
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