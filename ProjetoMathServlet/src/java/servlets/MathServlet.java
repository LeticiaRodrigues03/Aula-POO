/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 *
 * @author letic
 */
@WebServlet(name = "MathServlet", urlPatterns = {"/mathservlet.html"})
public class MathServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @SuppressWarnings("empty-statement")
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet MathServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Operações Aritméticas: </h1>");
            
            
           try{
                out.println("<h3>SOMA </h3>");
                out.println("<form action=\"mathservlet.html\">");
                out.println(" <input type=\"number\" step=\"0.1\" name=\"n1\" /> +");
                out.println("<input type=\"number\" step=\"0.1\" name=\"n2\" />");
                out.println("<input type=\"submit\" value=\"Calcular\"/></h3>");
                out.println("</form>");

                double n1 = Double.parseDouble(request.getParameter("n1"));
                double n2 = Double.parseDouble(request.getParameter("n2"));
                
                
                out.println("<h4><b>A soma é igual a </b>: "+(n1+n2)+"</h4>");
            }catch(Exception ex){    
                 out.println("<p style = 'color:blue'>"+ex.getMessage()+"</p>");
            } 
            
           
           try{
                out.println("<h3>SUBTRAÇÃO </h3>");
                out.println("<form action=\"mathservlet.html\">");
                out.println(" <input type=\"number\" step=\"0.1\" name=\"n3\" /> -");
                out.println("<input type=\"number\" step=\"0.1\" name=\"n4\" />");
                out.println("<input type=\"submit\" value=\"Calcular\"/></h3>");
                out.println("</form>");

                double n3 = Double.parseDouble(request.getParameter("n3"));
                double n4 = Double.parseDouble(request.getParameter("n4"));
                
                
                out.println("<h4><b>A subtração é igual a </b>: "+(n3-n4)+"</h4>");
                
            }catch(Exception ex){    
                out.println("<p style = 'color:blue'>"+ex.getMessage()+"</p>");
            } 
           
           
           
           
            try{
                out.println("<h3>DIVISÃO </h3>");
                out.println("<form action=\"mathservlet.html\">");
                out.println(" <input type=\"number\" step=\"0.1\" name=\"n5\"/> /");
                out.println("<input type=\"number\" step=\"0.1\" name=\"n6\" />");
                out.println("<input type=\"submit\" value=\"Calcular\"/></h3>");
                out.println("</form>");

                double n5 = Double.parseDouble(request.getParameter("n5"));
                double n6 = Double.parseDouble(request.getParameter("n6"));
                
                
                out.println("<h4><b>A divisão é igual a </b>: "+(n5/n6)+"</h4>");
            }catch(Exception ex){    
                 out.println("<p style = 'color:blue'>"+ex.getMessage()+"</p>");
            }     
             
           
           
            try{
                out.println("<h3>MULTIPLICAÇÃO </h3>");
                out.println("<form action=\"mathservlet.html\">");
                out.println(" <input type=\"number\" step=\"0.1\" name=\"n7\"/> *");
                out.println("<input type=\"number\" step=\"0.1\" name=\"n8\" />");
                out.println("<input type=\"submit\" value=\"Calcular\"/></h3>");
                out.println("</form>");

                double n7 = Double.parseDouble(request.getParameter("n7"));
                double n8 = Double.parseDouble(request.getParameter("n8"));
                
                
                out.println("<h4><b>A multiplicacao é igual a </b>: "+(n7*n8)+"</h4>");

            }catch(Exception ex){    
                 out.println("<p style = 'color:blue'>"+ex.getMessage()+"</p>");
            }  
            
            
            out.println("<h3><a href='index.html'>Voltar</a></h3>");
            out.println("</body>");
            out.println("</html>");
        }
    }

      
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
