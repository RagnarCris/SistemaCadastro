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
            <form name="Input Form" action="resultado_conversao.jsp">
                Tipo de Conversão:
                <input type="radio" name="tipoConversao" value="Comprimento" /> Comprimento
                <input type="radio" name="tipoConversao" value="Massa" /> Massa
                <input type="radio" name="tipoConversao" value="Temperatura" /> Temperatura
                <br>
                Unidade de Conversão (ex: Quilômetro):
                <input type="text" name="unidadeConversao" value="" />
                <br>
                Valor (ex: 60):
                <input type="text" name="valorConversao" value="" />
                <br>
                Unidade Desejada (ex: Metro):
                <input type="text" name="unidadeDesejada" value="" />
                <br>
                <input type="submit" value="Enviar" />
            </form>
        </h2>
    </body>
</html>
