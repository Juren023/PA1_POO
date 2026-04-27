package com.pweb.Controller;

import com.pweb.Model.ConversionMonedasModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "ConversionMondeasController", urlPatterns = {"/ConversionMondeasController"})
public class ConversionMondeasController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ConversionMondeasController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConversionMondeasController at " + request.getContextPath() + "</h1>");
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

            //1. Recibir los parámetros de la web
            String monto = request.getParameter("monto");
            String origen = request.getParameter("origen");
            String destino = request.getParameter("destino");

            //2. Enviar los parámetros al model
            ConversionMonedasModel objConversion = new ConversionMonedasModel(
                    Double.parseDouble(monto),
                    origen,
                    destino
            );

            //3. Crear una variable de sesión para almacenar respuesta
            HttpSession sConversion = request.getSession();

            //4. Agregar a la variable de sesión la respuesta enviada del model
            sConversion.setAttribute("resultado", objConversion.convertir());

            //5. Envío de los resultados a la web
            response.sendRedirect("ConversionMonedasView.jsp");
        }

        @Override
        public String getServletInfo
        
            () {
        return "Short description";
        }// </editor-fold>

    }
