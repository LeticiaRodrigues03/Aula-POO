<%-- 
    Document   : index
    Created on : 4 de out. de 2021, 15:49:59
    Author     : letic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h3>Páina inicial</h3>
        <h2>Sessões: <%= sessions%></h2>
        <% if(sessionName != null && sessionList != null){%>
        <ul>
            <%for (String sessionNome: sessionList){%>
            <li><%= sessionNome%></li>
            <%}%>
        </ul>
        <%}%>
        
        
        
     
    </body>
</html>
