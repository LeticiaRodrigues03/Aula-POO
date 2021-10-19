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
        <h3>Dica Megasena</h3>
        
        <%if(sessionName == null){%>
            <div style="color: red">Você não possui permissão para acessar este conteúdo</div>
        <%}else if(authNumbers != null){%>
           <table border="1">
                <tr>
                    <th>Numero</th>                
                </tr>
                <%for(int n: authNumbers){%>
                    <tr>
                        <td><%=n%></td>
                    </tr>
                <%}%>
            </table>    
        <%}%>

    </body>
</html>
