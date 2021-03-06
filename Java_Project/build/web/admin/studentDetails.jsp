<%-- 
    Document   : studentDetails
    Created on : Aug 13, 2014, 9:03:51 PM
    Author     : Raj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Style/style.css"/>
        <style>
            .border,.rain{
                height: 600px;
                width: 800px;
            }
            form{width: 98.5%;}
        </style>
    </head>
    <body>
        <div id="header">
            <img src="${pageContext.request.contextPath}/Style/banner.jpg" width="880px" height="150px">
        </div>

        <div id="menu">
            <ul id="menu">

                <li><a href="<%=request.getContextPath()%>/admin/redirectInstructor.jsp">Instructor</a> </li>  
                <li><a href="<%=request.getContextPath()%>/admin/redirectStudent.jsp">Student</a> </li>  
                <li> <a href="<%=request.getContextPath()%>/admin/redirectCourse.jsp"> Course </a>  </li> 
                <li> <a href="<%=request.getContextPath()%>/admin/redirectDepartment.jsp"> Department </a> </li>
                <li> <a href="<%=request.getContextPath()%>/admin/redirectUser.jsp"> User </a> </li>
                 <li> <a href="<%=request.getContextPath()%>/index.jsp"> Log Out</a> </li>

            </ul> 

        </div>     

        <div id="content">
            <div class="rain">
                <div class="border start">
                    <form>
                        <table border="1">
                            <tr>
                                <th>Student Id</th>
                                <th>First Name</th>
                                <th>middle Name</th>
                                <th>Last Name</th>
                                <th>Gender</th>
                                <th>Date of Birth</th>
                                <th>Contact Number</th>
                                <th>Email Id</th>
                                <th>Department</th>

                            </tr>

                            <c:forEach var="student" items="${studentDetails}">
                                <tr>
                                    <td><c:out value="${student.studentID}"/></td>
                                    <td><c:out value="${student.studentFirstName}"/></td>
                                    <td><c:out value="${student.studentMiddleName}"/></td>
                                    <td><c:out value="${student.studentLastName}"/></td>
                                    <td><c:out value="${student.studentGender}"/></td>
                                    <td><c:out value="${student.studentDOB}"/></td>
                                    <td><c:out value="${student.studentContact}"/></td>
                                    <td><c:out value="${student.studentEmail}"/></td>
                                    <td><c:out value="${student.departmentId}"/></td>
                                </tr>
                            </c:forEach>

                        </table>
                        <h1>Student Address Details</h1>
                        <table border="1">
                            <tr>
                                <th>Student Id</th>
                                <th>Address</th>
                                <th>City</th>
                                <th>State</th>
                                <th>Pincode</th>

                            </tr>

                            <c:forEach var="student2" items="${studentDetails}">
                                <tr>
                                    <td><c:out value="${student2.studentID}"/></td>
                                    <td><c:out value="${student2.studentAddress}"/></td>
                                    <td><c:out value="${student2.studentCity}"/></td>
                                    <td><c:out value="${student2.studentState}"/></td>
                                    <td><c:out value="${student2.studentPincode}"/></td>

                                </tr>
                            </c:forEach>

                        </table>
                    </form>
                </div>
            </div>
        </div>
        <div id="footer">
            <p style="text-align: center">  All Rights Reserved. Copyrights 2014 | Developed By: Banana Software Inc. </p>
        </div>
    </body>
</html>
