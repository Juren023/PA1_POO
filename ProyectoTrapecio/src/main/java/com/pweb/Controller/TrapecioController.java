
package com.pweb.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class TrapecioController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TrapecioController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TrapecioController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        
        //1. Recibir los parametros de la web
            
        //2. Enviar los parametros al model 
        
        //3. Crear una variable de session para alamacenar respuesta 
        
        //4. Agregar a la variable de session la respuesta enviada del model
        
        //5. Envio de los resultados a la web
        
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
