/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage5;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author akila
 */
@WebServlet(name = "NewServlet5", urlPatterns = {"/NewServlet5"})
public class NewServlet5 extends HttpServlet {

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
            out.println("<title>Servlet NewServlet5</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet NewServlet5 at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        
        //36 slides
        
        response.setContentType("text/html;charset=UTF-8");
        //response.setContentType("pdf/application;charset=UTF-8");
        
        PrintWriter out=response.getWriter();      
        
        String method=request.getMethod();
        out.println("Method: "+method); 
        
        String uri=request.getRequestURI();
        out.println("</br>URI: "+uri);    
        
        String authtype=request.getAuthType();
        out.println("</br>Authtype: "+authtype);
        
        String protocol=request.getProtocol();
        out.println("</br>Protocol: "+protocol);
        
        out.println("</br>------HEADER NAMES--------</br>");
        
        out.println("<html><body><table border=1>");
        
        Enumeration e=request.getHeaderNames();
        while(e.hasMoreElements())
        {
            String header=(String) e.nextElement();
            out.println("<td>"+header+"</td><td>" +request.getHeader(header)+"</td></tr>");
        }
        out.println("</table></body></html>");
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
