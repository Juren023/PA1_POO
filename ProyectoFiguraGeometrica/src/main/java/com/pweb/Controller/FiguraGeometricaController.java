package com.pweb.Controller;

import com.pweb.Model.FiguraGeometricaModel;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(name = "FiguraGeometricaController", urlPatterns = {"/FiguraGeometricaController"})
public class FiguraGeometricaController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet FiguraGeometricaController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet FiguraGeometricaController at " + request.getContextPath() + "</h1>");
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
        String figura = request.getParameter("figura");
        String base = request.getParameter("base");
        String altura = request.getParameter("altura");
        
        //2. Enviar los parametros al model 
        FiguraGeometricaModel objFigura = new FiguraGeometricaModel(
                figura,
                Double.parseDouble(base),
                Double.parseDouble(altura));

        //3. Crear una variable de session para alamacenar respuesta 
        HttpSession sFigura = request.getSession();

        //4. Agregar a la variable de session la respuesta enviada del model
        sFigura.setAttribute("area", objFigura.calcularArea());
        sFigura.setAttribute("perimetro", objFigura.calcularPerimetro());

        //5. Envio de los resultados a la web
        response.sendRedirect("FiguraGeometricaView.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
