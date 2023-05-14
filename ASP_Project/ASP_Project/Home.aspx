<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ASP_Project.Home" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--<title></title>--%>

    <style>
        .menu
        {
            padding : 10px;
            padding-left :100px;
        }

    </style>
</head>
<body>  
    <form id="form1" runat="server">
        <div>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Room.png" OnClick="ImageButton1_Click" />
            <div class="menu">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Menu.png" OnClick="ImageButton2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
