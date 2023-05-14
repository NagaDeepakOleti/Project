<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ASP_Project.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style media="screen">
      *,
*:before,
*:after{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
body{
    background-color: #080710;
}
.background{
    width: 430px;
    height: 520px;
    position: absolute;
    transform: translate(-50%,-50%);
    left: 50%;
    top: 50%;
}
.background .shape{
    height: 200px;
    width: 200px;
    position: absolute;
    border-radius: 50%;
}
.shape:first-child{
    background: linear-gradient(
        #1845ad,
        #23a2f6
    );
    left: -120px;
    top: -110px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -120px;
    bottom: -180px;
}
form{
    height: 600px;
    width: 440px;
    background-color: rgba(255,255,255,0.13);
    position: absolute;
    transform: translate(-50%,-50%);
    top: 55%;
    left: 50%;
    border-radius: 10px;
    backdrop-filter: blur(10px);
    border: 2px solid rgba(255,255,255,0.1);
    box-shadow: 0 0 40px rgba(8,7,16,0.6);
    padding: 10px 40px;
    
}
form *{
    font-family: 'Poppins',sans-serif;
    letter-spacing: 1px;
    outline: none;
    border: none;
}
form h3{
    font-size: 32px;
    font-weight: 500;
    line-height: 42px;
    text-align: center;
}

label{
    display: block;
    margin-top: 50px;
    font-size: 16px;
    font-weight: 500;
}
input{
    display: block;
    height: 50px;
    width: 100%;
    background-color: rgba(255,255,255,0.07);
    border-radius: 3px;
    padding: 0 10px;
    margin-top: 5px;
    font-size: 14px;
    font-weight: 300;
}
::placeholder{
    color:black;
    font-display:auto;
}
button{
    margin-top: 40px;
    width: 100%;
    background-color: #ffffff;
    color: #080710;
    padding: 15px;
    font-size: 18px;
    font-weight: 600;
    border-radius: 5px;
    cursor: pointer;
}

    </style>
</head>
<body style="background-color:white;" >
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form id="form1" runat="server">
        <div>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="First Name" Font-Bold="true" ></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter your First Name" BorderColor="Black" BorderWidth="3px" ></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name" Font-Bold="true" ></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Placeholder="Enter your Last name" BorderColor="Black" BorderWidth="3px" ></asp:TextBox>
             
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Email" Font-Bold="true" ></asp:Label>
            <br />
            <asp:TextBox ID="TextBox3" runat="server" Placeholder="Enter your Email"  TextMode="Email"  BorderColor="Black" BorderWidth="3px"></asp:TextBox>
            
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Password"  Font-Bold="true"  >  </asp:Label>
            <br />
            <asp:TextBox ID="TextBox4" runat="server" Placeholder="Enter your Password" TextMode="Password" BorderColor="Black" BorderWidth="3px" ></asp:TextBox>
             
            <br />
            <asp:Label ID="Label5" runat="server" Text="" Font-Bold="true" ForeColor="Red" ></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Reg_Click" Font-Bold="true" BackColor="DarkViolet" ForeColor="White" />
             <br />
            <div>
               Already Registered? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" >Click Here</asp:HyperLink> 
               </div>
        </div>
    </form>
</body>
</html>
