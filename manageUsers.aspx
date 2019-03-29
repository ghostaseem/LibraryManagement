<%@ Page Language="C#" AutoEventWireup="true" CodeFile="manageUsers.aspx.cs" Inherits="addBooks" %>

<!DOCTYPE html>
<html>

<head>
    <title>Book Light - Library Management System</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>

    <form id="form1" runat="server">
                <p>
                    <asp:Label ID="lblSearchBook" runat="server" ForeColor="White" style="font-size: xx-large" Text="Return Book"></asp:Label>
                </p>
                <asp:Label ID="Label1" runat="server" ForeColor="White" Text="Search username:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSearchUsername" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search" />
&nbsp;<asp:Button ID="btnClear" runat="server" OnClick="btnClear_Click" Text="Clear" />
                <br />
                <br />
                <asp:SqlDataSource ID="sqlDataSourceBook" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryManagementSystem_GroupWorkConnectionString %>" SelectCommand="SELECT * FROM [tblUsers]" FilterExpression="username LIKE '%{0}%'" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblUsers] WHERE [username] = @original_username AND [password] = @original_password AND [usertype] = @original_usertype" InsertCommand="INSERT INTO [tblUsers] ([username], [password], [usertype]) VALUES (@username, @password, @usertype)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [tblUsers] SET [password] = @password, [usertype] = @usertype WHERE [username] = @original_username AND [password] = @original_password AND [usertype] = @original_usertype">
                    <DeleteParameters>
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_usertype" Type="String" />
                    </DeleteParameters>
                    <FilterParameters>
                        <asp:ControlParameter Name="username" ControlID="txtSearchusername" PropertyName="Text" DefaultValue="@@@@" />
                    </FilterParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="usertype" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="password" Type="String" />
                        <asp:Parameter Name="usertype" Type="String" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_password" Type="String" />
                        <asp:Parameter Name="original_usertype" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />

                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="sqlDataSourceBook" ForeColor="White" DataKeyNames="username">
                    <Columns>
                        <asp:TemplateField HeaderText="username" SortExpression="username">
                           <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" ForeColor="Black" runat="server" Text='<%# Bind("username") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="password" SortExpression="password">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" ForeColor="Black" runat="server" Text='<%# Bind("password") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("password") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField><asp:TemplateField HeaderText="userType" SortExpression="userType">
                    <EditItemTemplate>
                         <asp:DropDownList ID="dropDownListUsers" runat="server" DataTextField="userType"
                             DataValueField="userType" SelectedValue= '<%# Bind("userType") %>' ForeColor="Black">
                            <asp:ListItem>Assistant</asp:ListItem>
                            <asp:ListItem>Manager</asp:ListItem>

                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblUserType" runat="server" ForeColor="White" Text='<%# Bind("userType")%>'>
                            </asp:Label>
                    </ItemTemplate>


                </asp:TemplateField>

                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                </asp:GridView>
                <br />
                
    </form>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</html>