
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Números Romanos</title>

        <style>
            /* Estilo */
            body {
                font-family: Arial, sans-serif;
                background: #f0f2f5;
                margin: 0;
                padding: 0;
            }


            .contenedor {
                max-width: 500px;
                margin: 60px auto;
                background: #ffffff;
                padding: 25px;
                border-radius: 10px;
                box-shadow: 0 4px 10px rgba(0,0,0,0.1);
                text-align: center;
            }


            h2 {
                color: #333;
                margin-bottom: 20px;
            }


            input {
                width: 90%;
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 6px;
                font-size: 14px;
            }


            button {
                width: 95%;
                padding: 10px;
                background: #0066cc;
                color: #fff;
                border: none;
                border-radius: 6px;
                font-size: 15px;
                cursor: pointer;
                transition: background 0.3s ease;
            }

            button:hover {
                background: #004999;
            }

            .resultado {
                margin-top: 20px;
                font-weight: bold;
                color: #0066cc;
                font-size: 16px;
            }


        </style>
    </head>
    <body>

        <div class="contenedor">
            <h2>Conversor de Números Romanos</h2>
            <form action="NumerosRomanosController" method="post">
                <label>Número natural</label><br>
                <input type="number" name="numero"><br>
                <label>Número romano</label><br>
                <input type="text" name="romano"><br><br>
                <button type="submit">Convertir</button>
            </form><br>
            <label class="resultado">Resultado Romano: ${resultadoRomano}</label><br>
            <label class="resultado">Resultado Entero: ${resultadoEntero}</label>
        </div>

    </body>
</html>
