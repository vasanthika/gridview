﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="task1demoform.aspx.cs" Inherits="task1demo.task1demoform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 87px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateDeleteButton="True" AutoGenerateEditButton="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Tasktable]" UpdateCommand="UPDATE [Tasktable] SET [name]=@name,[company]=@company WHERE [id]=@id" DeleteCommand="DELETE [Tasktable] WHERE [id]=@id"></asp:SqlDataSource>
        <br>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1" Width="94px"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server" Width="87px"></asp:TextBox><asp:Button ID="Button1" runat="server" Text="Insert" OnClick="Button1_Click" />
            </br>

        </div>
    </form>
</body>
</html>
