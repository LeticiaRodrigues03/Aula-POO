/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author letic
 */
@WebServlet(name = "JurosComposto", urlPatterns = {"/juros-composto.html"})
public class JurosCompostoServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JurosComposto</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>JavaEE</h1>");
            out.println("<h2>Servlets</h2>");
            out.println("<h2>Resultado Juros Composto</h2>");
            
            
            try{
                double vp = Double.parseDouble(request.getParameter("vp"));
                out.println("<h4><b>Valor Presente</b>: "+vp+"</h4>");
                double j = Double.parseDouble(request.getParameter("j"));
                out.println("<h4><b>Juros</b>: "+j+" %</h4>");
                double n = Integer.parseInt(request.getParameter("n"));
                out.println("<h4><b>Prazo</b>: "+n+" meses </h4>");
                
                j = j /100;
                j = 1 + j;
                double e = Math.pow(j,n);
                DecimalFormat deci = new DecimalFormat("0.000");
                double vf = vp*e;
                
                out.println("<h3><b>O Valor Final é de </b>: R$ "+(deci.format(vf))+"</h3>");
                
            }catch(Exception ex){    
                 out.println("<p style = 'color:red'>"+ex.getMessage()+"</p>");
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
