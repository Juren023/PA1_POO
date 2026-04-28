package com.pweb.Controller;

import com.pweb.Model.TeatroModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "TeatroController", urlPatterns = {"/TeatroController"})
public class TeatroController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TeatroController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TeatroController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // processRequest(request, response);
        //1. Recibir los parametros de la web
        String perfil = request.getParameter("perfil");
        String numeroEntradas = request.getParameter("numeroEntradas");
        String dia = request.getParameter("dia");

        //2. Enviar los parametros al model 
        TeatroModel objCompra = new TeatroModel(
                perfil,
                dia,
                Double.parseDouble(numeroEntradas)
        );

        //3. Crear una variable de session para alamacenar respuesta
        HttpSession sCompra = request.getSession();

        //4. Agregar a la variable de session la respuesta enviada del model
        sCompra.setAttribute("rangoEdad", objCompra.definirRango());
        sCompra.setAttribute("cantidadEntradas", objCompra.definirCantidadEntradas());
        sCompra.setAttribute("precioEntradas", objCompra.definirPrecios());
        sCompra.setAttribute("descuento", objCompra.calcularDescuento());
        sCompra.setAttribute("totalPagar", objCompra.calcularTotal());

        //5. Envio de los resultados a la web
        response.sendRedirect("TeatroView.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
