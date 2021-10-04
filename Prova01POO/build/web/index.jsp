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
        <h3>Início</h3>
        <%if(sessionName == null){%>
        <div>Nenhum usuário logado</div>
        <%}else{%>
        <table border="1">
            <tr>
                <td>Nome de Usuário</td>
            </tr>
            
            <tr>
                <td><%=sessionName%></td>
            </tr>
        </table>
        <%}%>
    </body>
</html>
