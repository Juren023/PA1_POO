
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Figura geométrica</title>

        <style>
            body {
                font-family: 'Roboto', sans-serif;
                background: #f0f0f0;
                margin: 0;
                padding: 30px;
                color: #333;
            }

            h1 {
                text-align: center;
                color: #222;
                font-size: 2.2em;
                margin-bottom: 20px;
                letter-spacing: 1px;
            }

            form {
                background: #ffffff;
                border: 1px solid #ddd;
                border-radius: 12px;
                padding: 25px;
                width: 350px;
                margin: 0 auto;
                box-shadow: 0px 4px 12px rgba(0,0,0,0.1);
                position: relative;
            }

            form::before {
                content: "📐 Selección de figura";
                position: absolute;
                top: -18px;
                left: 20px;
                background: #333;
                color: #fff;
                padding: 4px 10px;
                border-radius: 6px;
                font-size: 0.85em;
            }

            label {
                font-weight: bold;
                color: #444;
                display: block;
                margin-top: 12px;
            }

            input, select {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border-radius: 6px;
                border: 1px solid #ccc;
                background: #fafafa;
                transition: 0.3s;
            }

            input:focus, select:focus {
                border-color: #007bff;
                box-shadow: 0px 0px 6px #007bff;
                outline: none;
            }

            button {
                margin-top: 20px;
                width: 100%;
                padding: 10px;
                background: #007bff;
                color: white;
                font-weight: bold;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                transition: 0.3s;
            }

            button:hover {
                background: #0056b3;
            }

            h2 {
                text-align: center;
                margin-top: 30px;
                color: #222;
            }

            p {
                background: #ffffff;
                padding: 10px;
                border-left: 4px solid #007bff;
                margin: 10px auto;
                width: 350px;
                border-radius: 8px;
                box-shadow: 0px 2px 6px rgba(0,0,0,0.1);
            }

        </style>

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
