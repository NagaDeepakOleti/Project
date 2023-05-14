<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Room.aspx.cs" Inherits="ASP_Project.Room" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p> Welcome to Room booking</p>
            <br />
            <br />
            <asp:Label ID="Confirm" runat="server" Text=" "></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="name" runat="server" Placeholder="Enter your Name" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="phone" runat="server" Placeholder="Enter your phone no." ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Aadhar Number"></asp:Label>
            <asp:TextBox ID="aadhar" runat="server" Placeholder="Enter your Aadhar no. " ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Number of Persons"></asp:Label>
            <asp:TextBox ID="nop" runat="server" Placeholder="Enter the no. of persons  "></asp:TextBox>           
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Room Type"></asp:Label>
           <asp:DropDownList ID="RoomType" runat="server">
             <asp:ListItem Text="" Value=""></asp:ListItem>
             <asp:ListItem Text="AC" Value="AC"></asp:ListItem>
             <asp:ListItem Text="Non-AC" Value="Non-AC"></asp:ListItem>
           </asp:DropDownList>

            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Book" BackColor="DarkViolet" Font-Bold ForeColor="White" OnClick="Button1_Click" />
        </div>
    </form>
</body>
</html>
