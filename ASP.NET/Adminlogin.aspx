<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Adminlogin.aspx.cs" Inherits="StudentCourseRegistrationWeb1.Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <title></title>
</head>
<body>
    <div class="container">
        <form id="form1" runat="server">

            <div class="text-center formBody">
                <h1 class="text-info">Welcome to Admin Login Dashboard</h1>
                <div class="d-flex justify-content-center">
                    <table>
                        <tr>
                            <td>UserName
                            </td>
                            <td>
                                <asp:TextBox ID="TxtUsername" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>Password
                            </td>
                            <td>
                                <asp:TextBox ID="TxtPwd" type="password" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td rowspan="1">
                                <asp:Button ID="btnLogin" class="btn btn-success" runat="server" Text="Login" ForeColor="#006600" OnClick="btnSubmit_Click" />
                            </td>
                            <td>
                                <asp:Button ID="btnCancel" class="btn btn-warning" runat="server" Text="Cancel" ForeColor="#CC0000" OnClick="btnCancel_Click" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
<style>
    .formBody {
        padding: 50px
    }
</style>

