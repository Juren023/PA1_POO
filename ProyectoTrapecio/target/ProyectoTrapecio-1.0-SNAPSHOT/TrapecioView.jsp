
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trapecio</title>
    </head>
    
    <body>
        
        <h1>Ejercio 1</h1>
        
        <img src="Img/Imagen1.png" alt=""/>
        <h2>Datos del Trapecio</h2>
        
        <form action="TrapecioController" method="post">
            <label>Área del Trapecio (cm2) :</label> <br>
            <input type="text" name="area"><br>

            <label>Base menor del Trapecio(AB) :</label> <br>
            <input type="text" name="baseMenor"><br>

            <label>Base mayor del Trapecio (DC):</label> <br>
            <input type="text" name="baseMayor"><br>

            <label>Base del triangulo (DM) :</label> <br>
            <input type="text" name="baseDM"><br><br>

            <button type="submit">Calcular</button>
        </form>

        <h2>Resultados</h2>
        <p><b>Altura:</b> ${altura} cm</p>
        <p><b>Área del triángulo DAM:</b> ${areaDAM} cm²</p>
        <p><b>Perímetro:</b> ${perimetro} cm</p>
        
    </body>
    
</html>
