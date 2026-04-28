
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conversión de Monedas</title>

        <style>
            body {
                font-family: 'Poppins', sans-serif;
                background: linear-gradient(120deg, #00c6ff, #0072ff);
                margin: 0;
                padding: 30px;
                color: #fff;
            }

            h1 {
                text-align: center;
                font-size: 2.5em;
                margin-bottom: 25px;
                text-shadow: 2px 2px 5px rgba(0,0,0,0.3);
            }

            form {
                background: rgba(255,255,255,0.1);
                border-radius: 15px;
                padding: 25px;
                width: 350px;
                margin: 0 auto;
                box-shadow: 0px 6px 15px rgba(0,0,0,0.2);
                position: relative;
            }

            form::before {
                content: "💱 Conversión";
                position: absolute;
                top: -18px;
                left: 20px;
                background: #fff;
                color: #0072ff;
                padding: 4px 12px;
                border-radius: 8px;
                font-weight: bold;
                font-size: 0.9em;
            }

            label {
                font-weight: bold;
                display: block;
                margin-top: 12px;
                color: #fff;
            }

            input, select {
                width: 100%;
                padding: 10px;
                margin-top: 5px;
                border-radius: 8px;
                border: none;
                background: rgba(255,255,255,0.9);
                color: #333;
                font-size: 1em;
                transition: 0.3s;
            }

            input:focus, select:focus {
                outline: none;
                box-shadow: 0px 0px 8px #00c6ff;
            }

            button {
                margin-top: 20px;
                width: 100%;
                padding: 12px;
                background: #fff;
                color: #0072ff;
                font-weight: bold;
                border: none;
                border-radius: 10px;
                cursor: pointer;
                transition: 0.3s;
                font-size: 1.1em;
            }

            button:hover {
                background: #00c6ff;
                color: #fff;
            }

            h2 {
                text-align: center;
                margin-top: 30px;
                font-size: 1.8em;
                text-shadow: 1px 1px 3px rgba(0,0,0,0.3);
            }

            p {
                background: rgba(255,255,255,0.15);
                padding: 12px;
                border-left: 5px solid #fff;
                margin: 10px auto;
                width: 350px;
                border-radius: 10px;
                font-size: 1.1em;
            }

        </style>
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
