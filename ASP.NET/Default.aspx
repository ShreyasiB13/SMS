<%@ Page Title="Home Page" Language="C#"  AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="StudentCourseRegistrationWeb1._Default" %>


<form id="form1" runat="server">
    <table  align="center" >

        <tr>
   <td>  <asp:Label ID="Label1" runat="server" Text="UserName:"></asp:Label></td> 
    <td> <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox></td> 
    </tr>
        <tr>

   <td>  <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
    <td> <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
   </tr>
        <tr>
                        <tr>
                    <td rowspan ="1">
                        <asp:Button ID="Button1" runat="server" Text="Login" ForeColor="#006600" OnClick="btnSubmit_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" Text="Cancel" ForeColor="#CC0000" OnClick="btnCancel_Click" />
                    </td>
                </tr>
        </table>
</form>



