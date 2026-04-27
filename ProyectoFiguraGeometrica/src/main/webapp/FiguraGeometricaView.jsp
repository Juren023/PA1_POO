
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Figura geométrica</title>
    </head>
    <body>
        
        <h1>Figuras geométricas</h1>

        <form action="FiguraGeometricaController" method="post">
            <label>Figura:</label><br>
            <select name="figura">
                <option value="cuadrado">Cuadrado</option>
                <option value="rectangulo">Rectángulo</option>
                <option value="trapecio">Trapecio</option>
                <option value="triangulo">Triángulo</option>
                <option value="paralelogramo">Paralelogramo</option>
            </select><br>

            <label>Base :</label><br>
            <input type="text" name="base"><br>
            <label>Altura :</label><br>
            <input type="text" name="altura"><br><br>

            <button type="submit">Calcular</button>
        </form>

        <h2>Resultados</h2>
        <p>Área: ${area}</p>
        <p>Perímetro: ${perimetro}</p>


    </body>
</html>
