<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseDetails.aspx.cs" Inherits="StudentCourseRegistrationWeb1.CourseDetails" %>
<%@ Import Namespace="StudentCourseRegistrationWeb1" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>


            <table style="Width:100%; height:100%; border:thick "> 
                        <tr style="Width:100%">  
                            <th style="Width:20%;  border:thick ">CourseID</th>  
                            <th style="Width:20%;  border:thick ">CourseName</th>  
                            <th style="Width:20%;  border:thick ">CourseDetails</th> 
                            <th style="Width:20%;  border:thick ">CourseDuration</th>
                            <th style="Width:20%;  border:thick ">CourseFees </th> 
                            <th style="Width:20%;  border:thick ">SelectCourse </th> 
                     
                        </tr>
            <%

                Connected dbConnect = new Connected();
                List<Course1> courseList= dbConnect.getCourseDetails();

                for(int i=0;i< courseList.Count-1;i++)
                {
                    Course1 c = courseList[i];
                    //Console.WriteLine(c);
                    %>
               
            
                    
                    <tr style="Width:100%"> 
                        <td  style="Width:20%; text-align:center; border:thick" > <%=c.CourseId %> </td>
                        <td style="Width:20%; text-align:center; border:thick"> <%=c.CourseName%> </td>
                        <td style="Width:20%; text-align:center; border:thick"> <%=c.CourseDetail%> </td>
                        <td style="Width:20%; text-align:center; border:thick"> <%=c.Duration %>  </td>
                        <td style="Width:20%; text-align:center; border:thick"> <%=c.Fees  %> </td> 
                        <td style="Width:20%; text-align:center; border:thick"> <asp:CheckBox ID="CheckBox1" runat="server" /></td>                    
                    </tr>

                   
            <%
                    
                    
               
            }
               
                
             %>

                <tr style="Width:100%"> 
                    <td>
                        <asp:Button ID="btnEnroll" runat="server" Text="Enroll" /></td>
 </table>
        </div>
    </form>
</body>
</html>
