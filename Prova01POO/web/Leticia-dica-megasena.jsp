<%-- 
    Document   : Leticia-dica-megasena
    Created on : 4 de out. de 2021, 15:50:58
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
        <%if(sessionName != null){%>
            <h3>Dica Megasena</h3>
            <table border="1">
                <thead>
                    <tr>
                        <th>Numeros da Sorte</th>
                    </tr>
                </thead>
                <%for(i=0;i<maximo.length; i++){%>
                    <tbody>
                        <tr>
                            <td><%out.println(maximo[i]);%></td>
                        </tr>
                    </tbody>
                <%}%>
            </table>
        <%}else{%>
            <div style="color: red">Você não possui permissão para acessar este conteúdo</div>
        <%}%>
        
    </body>
</html>
