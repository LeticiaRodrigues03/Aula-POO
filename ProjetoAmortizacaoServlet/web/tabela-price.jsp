<%-- 
    Document   : tabela-price
    Created on : 13 de set. de 2021, 20:05:34
    Author     : letic
--%>

<%@page import="java.math.RoundingMode"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    double valor = 0, taxa = 0, taxa2 = 0, taxa3 = 0,  meses = 0, 
            exp = 0, exp2 = 0, parcela = 0, parcela2 = 0, saldoDevedor = 0  ;
    int i = 1;
    String error = null;
    
    
    if(request.getParameter("valor") == null || request.getParameter("taxa") == null || request.getParameter("meses") == null){
        error = "Não foram informado os três valores necessários 'Valor do empréstimo' , 'Taxa' e 'Meses'";
    }else{
        
        try{
            valor = Double.parseDouble(request.getParameter("valor"));
        }catch(Exception e){
            error = "O valor informado ' "
                    + request.getParameter("valor") + " ' não é um número válido";
        }
        
        try{
            taxa = Integer.parseInt(request.getParameter("taxa"));
        }catch(Exception e){
            error = "A taxa informada ' " 
                    + request.getParameter("taxa") + " ' não é um número válido";
        }
        
        try{
            meses = Integer.parseInt(request.getParameter("meses"));
        }catch(Exception e){
            error = "O mês informado ' " 
                    + request.getParameter("meses") + " ' não é um número válido";
        }
        
        try{
            taxa2 = taxa/100;
            int mes = (int) meses;
            exp = Math.pow((1+taxa2),meses) * taxa2;
            exp2 = Math.pow((1+taxa2),meses) -1;
            parcela = valor * (exp/exp2);
            saldoDevedor = (valor - parcela);
            taxa3 = valor * taxa2;
            parcela2 = valor - saldoDevedor;
            
            
            
        }catch(Exception e){
            error = "Erro de cálculo " + e.getMessage();
        }
    }        
        

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Cálculo Amortização</h2>
        
       
        
        
        
    
        <form action="tabela-price.jsp">
            <label for="taxa">Valor do Empréstimo  (R$) </label>
            <input type="number" name="valor" value="<%=valor%>" /> <br><br>
            <label for="taxa">Taxa de juros mensal </label>
            <input type="number" name="taxa" value="<%=taxa%>"/> <br><br>
            <label for="taxa">Meses</label>
            <input type="number" name="meses" value="<%=meses%>"/><br><br> 
            <input type="submit" value="Calcular"/><br><br> 
        </form>  
        
        
  
        <%DecimalFormat df = new DecimalFormat("###,##0.00");%> 
        
        <%if (error != null) {%>
            <div style="color:red"><%= error %></div>
        <%}else{%>
            <table border="1">
                <tr>
                    <th>Valor do Empréstimo</th>
                    <td><%=(df.format(valor))%></td>
                </tr>
                
                <tr>
                    <th>Taxa de Juros %</th>
                    <td><%=taxa%></td> 
                </tr>
                
                <tr>
                    <th>Meses</th>
                    <td><%=meses%></td>                   
                </tr>
            </table> 
            <br><br>
            
            <table border="1">
                <thead>
                    <tr>
                        <th>Período</th>
                        <th>Saldo Devedor</th>
                        <th>Parcela</th>
                        <th>Juros</th>
                        <th>Amortização</th>
                    </tr>
                </thead>
            
            
                <tbody>
                    <tr>  
                        <th scope="row">0</th>
                        <td><%=(df.format(valor))%></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    
                    <tr>
                    <%do{%>
                        <%valor = (valor + taxa3) - parcela2;%>
                        <th scope="row"><%=i%></th>
                        <td><%=(df.format(valor))%></td>
                        <td><%=(df.format(parcela2))%></td>
                        <td><%=(df.format(taxa3))%></td>
                        <td><%=(df.format(parcela2 - taxa3))%></td>
                        <%taxa3 = valor * taxa2;%>     
                    </tr>
                    <%saldoDevedor = valor;%>
                    <%saldoDevedor = valor - parcela;%>
                    <%i++;%>
                    <%} while (i<=  meses);%>
                    
                </tbody>
            </table>
            <br>        
                   
        <%}%>   
        <hr/> 
        <footer>
            <%@include file="WEB-INF/jspf/footer.jspf" %>
        </footer>
    </body>
</html>
