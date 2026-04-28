
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href=""/>
        <title>Trapecio</title>

        <style>
            body {
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                background: linear-gradient(135deg, #f0f4ff, #d6e0f5);
                margin: 0;
                padding: 20px;
                color: #333;
            }
            
            .main-container {
                width: 600px;
                margin: auto;
                
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
            }

            h1 {
                text-align: center;
                color: #2a3d66;
                text-shadow: 2px 2px #a3bffa;
                font-size: 2.5em;
            }

            h2 {
                color: #1f2d3d;
                border-left: 5px solid #4a90e2;
                padding-left: 10px;
                margin-top: 30px;
            }

            .img {
                width: 300px;
                margin: auto;
            }

            form {
                background: #ffffff;
                border: 2px dashed #4a90e2;
                border-radius: 12px;
                padding: 20px;
                width: 350px;
                margin: 20px auto;
                box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
                position: relative;
            }

            form::before {
                content: "✏️ Datos";
                position: absolute;
                top: -15px;
                left: 15px;
                background: #4a90e2;
                color: white;
                padding: 3px 8px;
                border-radius: 5px;
                font-size: 0.9em;
            }

            label {
                font-weight: bold;
                color: #2a3d66;
                display: block;
                margin-top: 10px;
            }

            input {
                width: 100%;
                padding: 8px;
                margin-top: 5px;
                border-radius: 6px;
                border: 1px solid #ccc;
                transition: 0.3s;
            }

            input:focus {
                border-color: #4a90e2;
                box-shadow: 0px 0px 5px #4a90e2;
                outline: none;
            }

            button {
                margin-top: 15px;
                width: 100%;
                padding: 10px;
                background: #4a90e2;
                color: white;
                font-weight: bold;
                border: none;
                border-radius: 8px;
                cursor: pointer;
                transition: 0.3s;
            }

            button:hover {
                background: #2a3d66;
            }

            p {
                background: #eef3ff;
                padding: 10px;
                border-left: 5px solid #4a90e2;
                margin: 10px auto;
                width: 350px;
                border-radius: 8px;
            }

        </style>

    </head>

    <body>

        <div class="main-container">
            <h1>Trapecio</h1>

            <div class="img">
                <img src="Img/Imagen1.png" alt=""/>
            </div>
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
        </div>

    </body>

</html>
