<%-- 
    Document   : redirectDepartment
    Created on : Aug 14, 2014, 3:10:20 AM
    Author     : Jack
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin-Instructor</title>
        <link rel="stylesheet" type="text/css" href="../Style/style.css"/>
       
    </head>
   
        <body id="home">
        
        <div id="header">
            <img src="../Style/banner.jpg" width="880px" height="150px">
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
      <h1>Department Information</h1>
    </div>     
        
    <div id="content">
        
        <%--    <a href="addDepartment.jsp" class="myButton"> ADD </a> &nbsp; <a href="#" class="myButton"> EDIT </a> &nbsp; <a href="#" class="myButton"> GET </a> &nbsp;--%>
        <a href="<%=request.getContextPath()%>/admin/addDepartment.jsp" class="myButton">ADD</a>
          <form name="editDep" id="editDep" class="butcls" action="<%=request.getContextPath()%>/DepartmentServlet" method="post">
            <input type="hidden" name="check" value="EDITDEP"/>
            <input type="button" name="add" class="myButton"  onclick="document.getElementById('editDep').submit();" value="EDIT">
        </form> 
        <div id="content-left">	
            <div class="rain">
			<div class="border start">
                            
       <form name="studentInsert" action="<%=request.getContextPath()%>/InstructorDetailsServlet" method="post">
           <p> Welcome, Admin , Here Admin is able to add , update , delete the instructors information as well as for the students.
               <br> Else than this Admin is able to check the courses add them and also for the departments.</p>
        </form>
                       </div>
                </div>
        </div>
            <div id="content-right"> 
                <p style="width: 480px" style="text-align: justify"> 
                Welcome, Admin , Here Admin is able to add , update , delete the instructors information as well as for the students.
                <br> Else than this Admin is able to check the courses add them and also for the departments. <br>
                Here Admin is able to add , update , delete the instructors information as well as for the students.
               <br> Else than this Admin is able to check the courses add them and also for the departments.
                
                </p>
             </div>
        </div>
           <div id="footer">
               <p style="text-align: center">  All Rights Reserved. Copyrights 2014 | Developed By: Banana Software Inc. </p>
           </div>
        </body> </html>