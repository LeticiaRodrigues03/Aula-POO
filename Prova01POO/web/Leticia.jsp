<%-- 
    Document   : Leticia
    Created on : 4 de out. de 2021, 15:50:26
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
            <h3>Sobre Letícia</h3>
            <h4>RA: 1290482013027</h4>
            <h4>NOME: Letícia Rodrigues de Sousa Santos</h4>
            <h4>INGRESSOU NA FATEC: 1º Semestre de 2020</h4>
            <a href="https://github.com/LeticiaRodrigues03" target="_blank">GitHub</a>
            
            <table border="1">
                <thead>
                    <tr>
                        <th>Sigla</th>
                        <th>Discliplina</th>
                        <th>Professor</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>IBD002</td>
                        <td>Banco de Dados</td>
                        <td>Simone Maria Viana Romano</td>
                    </tr>
                    
                    <tr>
                        <td>IES300</td>
                        <td>Engenharia de Software</td>
                        <td>Renata Neves Ferreira</td>
                    </tr>
                    
                    <tr>
                        <td>ILP007</td>
                        <td>Programação Orientada a Objetos</td>
                        <td>Ricardo Pupo Larguesa</td>
                    </tr>
                    
                    <tr>
                        <td>ILP512</td>
                        <td>lINGUAGEM DE pROGRAMAÇÃO IV - Internet</td>
                        <td>Paulo Roberto Tazinazo Candido</td>
                    </tr>
                    
                    <tr>
                        <td>ISO200</td>
                        <td>Sistemas Operacionais II</td>
                        <td>Fábio Pessoa de Sá</td>
                    </tr>
                    
                    <tr>
                        <td>TTG001</td>
                        <td>Metodologia da Pesquisa Cienfífico-Tecnológica</td>
                        <td>Sabrina Martins Boto</td>
                    </tr>
                </tbody>
            </table>
        
        <%}else{%>
        <div style="color: red">Você não possui permissão para acessar este conteúdo. Por favor, faça o login.</div>
        <%}%>
    </body>
</html>
