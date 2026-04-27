
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Romanos</title>
    </head>
    <body>

        <h1>Números Romanos</h1>

        <h2>De número natural a romano</h2>
        <form action="RomanosController" method="post">
            <label>Número natural:</label><br>
            <input type="text" name="numeroNatural"><br><br>
            <button type="submit" name="accion" value="naturalToRomano">Convertir</button>
        </form>

        <h2>De número romano a natural</h2>
        <form action="RomanosController" method="post">
            <label>Número romano:</label><br>
            <input type="text" name="numeroRomano"><br><br>
            <button type="submit" name="accion" value="romanoToNatural">Convertir</button>
        </form>

        <h2>Resultado</h2>
        <p><b>Conversión:</b> ${resultado}</p>

    </body>
</html>
