<%-- 
    Document   : cadastro
    Created on : 10/05/2020, 17:47:41
    Author     : crist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            Cadastro de Pessoa
        </h1>
        <h2>
            <form name="Input Form" action="resultado.jsp">
                Digite seu nome:
                <input type="text" name="nome" value="" />
                <br>
                Digite sua idade:
                <input type="text" name="idade" value="" />
                <br>
                Digite seu sexo:
                <input type="radio" name="sexo" value="Masculino" /> M
                <input type="radio" name="sexo" value="Feminino" /> F
                <br>
                Digite seu peso em quilos (ex: 60):
                <input type="text" name="peso" value="" />
                <br>
                Digite sua altura em metros (ex: 1.70):
                <input type="text" name="altura" value="" />
                <br>
                <input type="submit" value="Enviar" />
            </form>
        </h2>
    </body>
</html>
