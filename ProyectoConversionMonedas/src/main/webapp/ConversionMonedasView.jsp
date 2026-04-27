
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <h1>Conversión de Monedas</h1>

        <form action="ConversionMondeasController" method="post">
            <label>Monto:</label><br>
            <input type="text" name="monto"><br><br>

            <label>Moneda de origen:</label><br>
            <select name="origen">
                <option value="soles">Soles</option>
                <option value="dolares">Dólares</option>
                <option value="euros">Euros</option>
            </select><br><br>

            <label>Moneda de destino:</label><br>
            <select name="destino">
                <option value="soles">Soles</option>
                <option value="dolares">Dólares</option>
                <option value="euros">Euros</option>
            </select><br><br>

            <button type="submit">Convertir</button>
        </form>

        <h2>Resultado</h2>
        <p><b>Importe convertido:</b> ${resultado}</p>

    </body>
</html>
