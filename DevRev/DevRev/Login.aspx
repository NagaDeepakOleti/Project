<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DevRev.Login" %>

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
    left: -80px;
    top: -80px;
}
.shape:last-child{
    background: linear-gradient(
        to right,
        #ff512f,
        #f09819
    );
    right: -80px;
    bottom: -80px;
}
form{
    height: 430px;
    width: 400px;
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
    margin-top: 30px;
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
    margin-top: 8px;
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
            <asp:Label ID="Label1" runat="server" Text="Username" Font-Bold="true"   ></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Placeholder="Enter the Email" BorderColor="Black" BorderWidth="3px" ></asp:TextBox>
            <br />
             <br />
            <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="true" ></asp:Label>
             <asp:TextBox ID="TextBox2" runat="server"  TextMode="Password" Placeholder="Enter your Password" BorderColor="Black"   BorderWidth="3px" ></asp:TextBox>
            <br />
             <asp:Label ID="Label3" runat="server" Text=" "></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="true" ForeColor="White" BackColor="DarkViolet" Font-Size="Larger" OnClick="Button1_Click" />
                <br />
               <div>
               If your not Register? <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx" >Click Here</asp:HyperLink> 
               </div>
           </div>
    </form>
</body>
</html>
