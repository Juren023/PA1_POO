
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <form action="FigurasController" method="post">
            <label>Figura:</label>
            <select name="figura">
                <option value="cuadrado">Cuadrado</option>
                <option value="rectangulo">Rectángulo</option>
                <option value="trapecio">Trapecio</option>
                <option value="triangulo">Triángulo</option>
                <option value="paralelogramo">Paralelogramo</option>
            </select><br>

            <label>Dato 1:</label>
            <input type="text" name="dato1"><br>
            <label>Dato 2:</label>
            <input type="text" name="dato2"><br>
            <label>Dato 3:</label>
            <input type="text" name="dato3"><br>

            <button type="submit">Calcular</button>
        </form>

        <h2>Resultados</h2>
        <p>Área: ${area}</p>
        <p>Perímetro: ${perimetro}</p>


    </body>
</html>
