<%-- 
    Document   : menu
    Created on : 12/02/2020, 08:37:40 PM
    Author     : 503
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" 
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String UsuarioLog="",PasswordLog="";
            
            if(request.getParameter("txtusuario") != null){
                UsuarioLog = request.getParameter("txtusuario");
            }
            
             if((request.getParameter("txtpassword") != null) && (request.getParameter("txtpassword").equals("123"))){
                UsuarioLog = request.getParameter("txtpassword");
            }
             else{
                 response.sendRedirect("index.jsp");
             }
        %>
        <jsp:useBean id="logueoActual" class="Beans.BeanLogueo" scope="session"/>
        <jsp:setProperty name="logueoActual" property="usuario" value="<%=UsuarioLog%>"/>
        <jsp:setProperty name="logueoActual" property="password" value="<%=PasswordLog%>"/>
        <nav>
            <ul>
                <li>Home</li>
                <li>About</li>
                <li>Search</li>
            </ul>
        </nav>
        <script>
            alert("Bienvenido");
        </script>
    </body>
</html>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
