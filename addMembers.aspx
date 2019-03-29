<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addMembers.aspx.cs" Inherits="addBooks" %>

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
                <asp:SqlDataSource ID="sqlDataSourceAddBook" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" DeleteCommand="DELETE FROM [tblMember] WHERE [memberId] = @original_memberId AND [memberFirstName] = @original_memberFirstName AND [memberLastName] = @original_memberLastName AND [memberAddress] = @original_memberAddress AND [memeberDOB] = @original_memeberDOB AND [tblMemberType_memberTypeId] = @original_tblMemberType_memberTypeId" InsertCommand="INSERT INTO [tblMember] ([memberId], [memberFirstName], [memberLastName], [memberAddress], [memeberDOB], [tblMemberType_memberTypeId]) VALUES (@memberId, @memberFirstName, @memberLastName, @memberAddress, @memeberDOB, @tblMemberType_memberTypeId)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblMember]" UpdateCommand="UPDATE [tblMember] SET [memberFirstName] = @memberFirstName, [memberLastName] = @memberLastName, [memberAddress] = @memberAddress, [memeberDOB] = @memeberDOB, [tblMemberType_memberTypeId] = @tblMemberType_memberTypeId WHERE [memberId] = @original_memberId AND [memberFirstName] = @original_memberFirstName AND [memberLastName] = @original_memberLastName AND [memberAddress] = @original_memberAddress AND [memeberDOB] = @original_memeberDOB AND [tblMemberType_memberTypeId] = @original_tblMemberType_memberTypeId">
                    <DeleteParameters>
                        <asp:Parameter Name="original_memberId" Type="String" />
                        <asp:Parameter Name="original_memberFirstName" Type="String" />
                        <asp:Parameter Name="original_memberLastName" Type="String" />
                        <asp:Parameter Name="original_memberAddress" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_memeberDOB" />
                        <asp:Parameter Name="original_tblMemberType_memberTypeId" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="memberId" Type="String" />
                        <asp:Parameter Name="memberFirstName" Type="String" />
                        <asp:Parameter Name="memberLastName" Type="String" />
                        <asp:Parameter Name="memberAddress" Type="String" />
                        <asp:Parameter DbType="Date" Name="memeberDOB" />
                        <asp:Parameter Name="tblMemberType_memberTypeId" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="memberFirstName" Type="String" />
                        <asp:Parameter Name="memberLastName" Type="String" />
                        <asp:Parameter Name="memberAddress" Type="String" />
                        <asp:Parameter DbType="Date" Name="memeberDOB" />
                        <asp:Parameter Name="tblMemberType_memberTypeId" Type="String" />
                        <asp:Parameter Name="original_memberId" Type="String" />
                        <asp:Parameter Name="original_memberFirstName" Type="String" />
                        <asp:Parameter Name="original_memberLastName" Type="String" />
                        <asp:Parameter Name="original_memberAddress" Type="String" />
                        <asp:Parameter DbType="Date" Name="original_memeberDOB" />
                        <asp:Parameter Name="original_tblMemberType_memberTypeId" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                 <h1>Add Members</h1>
                <asp:FormView ID="formAddBook" runat="server" DataKeyNames="memberId" DataSourceID="sqlDataSourceAddBook" DefaultMode="Insert" ForeColor="Black">
                    <EditItemTemplate>
                        memberId:
                        <asp:Label ID="memberIdLabel1" runat="server" Text='<%# Eval("memberId") %>' />
                        <br />
                        memberFirstName:
                        <asp:TextBox ID="memberFirstNameTextBox" runat="server" Text='<%# Bind("memberFirstName") %>' />
                        <br />
                        memberLastName:
                        <asp:TextBox ID="memberLastNameTextBox" runat="server" Text='<%# Bind("memberLastName") %>' />
                        <br />
                        memberAddress:
                        <asp:TextBox ID="memberAddressTextBox" runat="server" Text='<%# Bind("memberAddress") %>' />
                        <br />
                        memeberDOB:
                        <asp:TextBox ID="memeberDOBTextBox" runat="server" Text='<%# Bind("memeberDOB") %>' />
                        <br />
                        tblMemberType_memberTypeId:
                        <asp:TextBox ID="tblMemberType_memberTypeIdTextBox" runat="server" Text='<%# Bind("tblMemberType_memberTypeId") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" class="btn btn-default" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="UpdateCancelButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <div class="col-sm-6">
                        Member Id:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="memberIdTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("memberId") %>' />
                        <br /> </div>
                        <div class="col-sm-6">
                        First Name:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="memberFirstNameTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("memberFirstName") %>' />
                        <br /> </div>
                        <div class="col-sm-6">
                        Last Name:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="memberLastNameTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("memberLastName") %>' />
                        <br /> </div>
                        <div class="col-sm-6">
                        Address:
                            </div>
                        <div class="col-sm-6">
                        <asp:TextBox ID="memberAddressTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("memberAddress") %>' />
                        <br /></div>
                        <div class="col-sm-6">
                        DOB:
                            </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="memeberDOBTextBox" class="form-control" runat="server" ForeColor="Black" Text='<%# Bind("memeberDOB") %>' />
                        <br /></div>
                            <div class="col-sm-6">
                        Member Type Id:
                                </div>
                            <div class="col-sm-6">
                        <asp:TextBox ID="tblMemberType_memberTypeIdTextBox" class="form-control" ForeColor="Black" runat="server" Text='<%# Bind("tblMemberType_memberTypeId") %>' />
                        <br /> </div>
                        <asp:Button ID="InsertButton" class="btn btn-default" ForeColor="White" BackColor="#9459A4" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="InsertCancelButton" class="btn btn-default" ForeColor="White" BackColor="#1cb898" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        memberId:
                        <asp:Label ID="memberIdLabel" runat="server" Text='<%# Eval("memberId") %>' />
                        <br />
                        memberFirstName:
                        <asp:Label ID="memberFirstNameLabel"  runat="server" Text='<%# Bind("memberFirstName") %>' />
                        <br />
                        memberLastName:&nbsp;<asp:Label ID="memberLastNameLabel" runat="server" Text='<%# Bind("memberLastName") %>' />
                        <br />
                        memberAddress:
                        <asp:Label ID="memberAddressLabel" runat="server" Text='<%# Bind("memberAddress") %>' />
                        <br />
                        memeberDOB:
                        <asp:Label ID="memeberDOBLabel" runat="server" Text='<%# Bind("memeberDOB") %>' />
                        <br />
                        tblMemberType_memberTypeId:
                        <asp:Label ID="tblMemberType_memberTypeIdLabel" runat="server" Text='<%# Bind("tblMemberType_memberTypeId") %>' />
                        <br />
                        <asp:Button ID="EditButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:Button ID="DeleteButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        &nbsp;<asp:Button ID="NewButton" class="btn btn-default" runat="server" CausesValidation="False" CommandName="New" Text="New" />
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