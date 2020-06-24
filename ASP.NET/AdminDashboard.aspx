<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="StudentCourseRegistrationWeb1.AdminDashboard" %>

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
                <h3 class="text-info">View All Necessary Details</h3>
                <div class="d-flex justify-content-around">
                    <asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="View Student Details" OnClick="Button1_Click" />


                    <asp:Button ID="Button2" class="btn btn-primary" runat="server" Text="View Trainer Details" OnClick="Button2_Click1" />

                </div>


            </div>
        </form>
    </div>

</body>
</html>
