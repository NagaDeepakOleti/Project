<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="DevRev.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style>

        .add
        {
            margin-top:80px;
           margin-left:800px;
          border-radius:20px;
          position:absolute;

        }
        .book
        {
           margin-left:50%;
          
        }
        input{
            width:200px;
        }
       .slot
       {
    height: 300px;
    width: 280px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 50%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 50px 35px;
       }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div style="text-align: right;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" >Logout</asp:HyperLink>
    </div>
        <div>
            <div class="add">
                <asp:Label ID="fund" runat="server" Text=" "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="Search your vaccine center" Font-Size="Larger" Height="18px"  Width="250px"></asp:TextBox>  <asp:Button ID="Button1" runat="server" Text="Search" Font-Bold="true" ForeColor="White" BackColor="DarkViolet" Font-Size="Larger" OnClick="Button1_Click" /> 
            </div>
           
        </div>
        <div class="slot">
            <asp:Label ID="msg" runat="server" Text="  "></asp:Label>
            <br />
           <asp:Label ID="Label1" runat="server" Text="Full Name" Font-Bold="true" ></asp:Label>
           <br />

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter the name as per Aadhaar" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Aadhar Number" Font-Bold="true"></asp:Label>
             <br />
            
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Enter your Aadhaar No."></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date of Brith" Font-Bold="true" ></asp:Label>
            <br/>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Enter your dae of birth"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Distict" Font-Bold="true"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Enter your Distict"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="City" Font-Bold="true"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox6" runat="server" placeholder="Enter your City"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="BooK Slot" Font-Size="Larger" Font-Bold="true" ForeColor="White" BackColor="DarkViolet" OnClick="Button2_Click" />
       </div>
    </form>
</body>
</html>
