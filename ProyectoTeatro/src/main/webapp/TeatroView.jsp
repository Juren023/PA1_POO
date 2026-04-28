
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Teatro</title>

        <style>
            body {
                font-family: 'Georgia', serif;
                background: radial-gradient(circle at top, #2c003e, #000000);
                color: #f5f5f5;
                margin: 0;
                padding: 20px;
            }

            h3 {
                color: #ffd700;
                border-bottom: 2px solid #ffd700;
                padding-bottom: 5px;
                margin-top: 30px;
                text-transform: uppercase;
                letter-spacing: 2px;
            }

            form {
                background: rgba(255, 255, 255, 0.05);
                border: 2px solid #ffd700;
                border-radius: 12px;
                padding: 20px;
                width: 400px;
                margin: 20px auto;
                box-shadow: 0px 0px 15px rgba(255, 215, 0, 0.6);
                position: relative;
            }

            form::before {
                content: "🎟️ Compra de Entradas";
                position: absolute;
                top: -20px;
                left: 20px;
                background: #ffd700;
                color: #2c003e;
                padding: 5px 10px;
                border-radius: 8px;
                font-weight: bold;
            }

            label {
                font-weight: bold;
                color: #ffd700;
                display: block;
                margin-top: 10px;
            }

            input, select {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border-radius: 6px;
                border: 1px solid #ffd700;
                background: rgba(255,255,255,0.1);
                color: #f5f5f5;
            }

            input:focus, select:focus {
                border-color: #ff4500;
                box-shadow: 0px 0px 8px #ff4500;
                outline: none;
            }

            button {
                margin-top: 15px;
                width: 100%;
                padding: 10px;
                background: #ffd700;
                color: #2c003e;
                font-weight: bold;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                transition: 0.3s;
            }

            button:hover {
                background: #ff4500;
                color: #fff;
            }

            label, p {
                margin: 8px auto;
                width: 400px;
                background: rgba(255,255,255,0.05);
                padding: 8px;
                border-left: 4px solid #ffd700;
                border-radius: 6px;
            }

        </style>

    </head>
    <body>

        <h3>Precios de entradas:</h3>
        <p>1. Niños = S/.150 </p>
        <p>2. Adolescente = S/.180</p>
        <p>3. Adulto = S/.220</p>
        <p>4. Adulto Mayor = S/.200</p>

        <h3>Proceso de compra</h3>

        <form action="TeatroController" method="post">
            <label>Perfil: </label> <br>
            <select name="perfil">
                <option value="niño">Niño</option>
                <option value="adolescente">Adolescente</option>
                <option value="adulto">Adulto</option>
                <option value="adultoMayor">Adulto Mayor</option>
            </select> <br> 

            <label>Numero de Entradas</label><br>
            <input type="text" name="numeroEntradas"> <br>

            <label>Dia</label><br>
            <select name="dia">
                <option value="entreSemana">Lunes a Viernes</option>
                <option value="finSemanaFeriados">Fin de Semana, Feriados</option>
            </select><br><br>

            <button type="submit">Calcular</button>
        </form><br>

        <h3>Resultado</h3>
        <label>Rango de Edad: ${rangoEdad}</label><br>
        <label>Cantidad Entradas: ${cantidadEntradas}</label><br>
        <label>Precio Entradas: ${precioEntradas}</label><br>
        <label>Descuento: ${descuento}</label><br>
        <label>Total a pagar: ${totalPagar}</label>
    </body>
</html>
