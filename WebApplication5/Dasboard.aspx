﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dasboard.aspx.cs" Inherits="WebApplication5.Dasboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblAccountDetails" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:LinkButton ID="lkbtnMember" runat="server" OnClick="lkbtnMember_Click">查看使用者帳號密碼表</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="lkbtnItem" runat="server">查看寶物資訊表</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="lkbtnMonster" runat="server" OnClick="lkbtnMonster_Click">查看怪物資訊表</asp:LinkButton>
            <br />
            <br />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" style="height: 21px" />
        </div>
    </form>
</body>
</html>
