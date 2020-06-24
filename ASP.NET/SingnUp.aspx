<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="StudentCourseRegistrationWeb1.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
            <table align="center">
            <tr>
            <td><asp:Label ID="Label1" runat="server" Text="StudentName"></asp:Label></td>
            <td><asp:TextBox ID="txtStudentName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Email"></asp:Label></td>
            <td><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
                     </tr>
                <tr>
            <td><asp:Label ID="Label6" runat="server" Text="UserName"></asp:Label></td>
            <td><asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td>
                     </tr>
                <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
            <td><asp:TextBox ID="txtPassword" runat="server"></asp:TextBox></td>
                     </tr>
                <tr>
            <td><asp:Label ID="Label4" runat="server" Text="PhoneNumber"></asp:Label></td>
            <td><asp:TextBox ID="txtPhoneNumber" runat="server"></asp:TextBox></td>
                     </tr>
                <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Country"></asp:Label></td>
            <td><asp:TextBox ID="txtCountry" runat="server"></asp:TextBox></td>

                     </tr>
                <tr>
             <td><asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="RegisterUser" /></td>

       </table>

        </div>
    </form>
</body>
</html>
