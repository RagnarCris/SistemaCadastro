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
            Conversão de medidas
        </h1>
        <h2>
            <form name="Input Form" action="resultado_conversao.jsp">
                Tipo de Conversão:
                <input type="radio" name="tipoConversao" value="Comprimento" /> Comprimento
                <input type="radio" name="tipoConversao" value="Massa" /> Massa
                <input type="radio" name="tipoConversao" value="Temperatura" /> Temperatura
                <br>
                <br>
                Unidade de Conversão:<br>
                <input type="radio" name="unidadeConversao" value="Quilômetro" /> Quilômetro
                <input type="radio" name="unidadeConversao" value="Metro" /> Metro
                <input type="radio" name="unidadeConversao" value="Centímetro" /> Centímetro
                <input type="radio" name="unidadeConversao" value="Milímetro" /> Milímetro
                <br>
                <input type="radio" name="unidadeConversao" value="Tonelada" /> Tonelada
                <input type="radio" name="unidadeConversao" value="Quilograma" /> Quilograma
                <input type="radio" name="unidadeConversao" value="Grama" /> Grama
                <input type="radio" name="unidadeConversao" value="Miligrama" /> Miligrama
                <br>
                <input type="radio" name="unidadeConversao" value="Celsius" /> Celsius
                <input type="radio" name="unidadeConversao" value="Fahrenheit" /> Fahrenheit
                <input type="radio" name="unidadeConversao" value="Kelvin" /> Kelvin
                <br>
                <br>
                Valor (ex: 60):
                <input type="text" name="valorConversao" value="" />
                <br><br>
                Unidade Desejada:<br>
                <input type="radio" name="unidadeDesejada" value="Quilômetro" /> Quilômetro
                <input type="radio" name="unidadeDesejada" value="Metro" /> Metro
                <input type="radio" name="unidadeDesejada" value="Centímetro" /> Centímetro
                <input type="radio" name="unidadeDesejada" value="Milímetro" /> Milímetro
                <br>
                <input type="radio" name="unidadeDesejada" value="Tonelada" /> Tonelada
                <input type="radio" name="unidadeDesejada" value="Quilograma" /> Quilograma
                <input type="radio" name="unidadeDesejada" value="Grama" /> Grama
                <input type="radio" name="unidadeDesejada" value="Miligrama" /> Miligrama
                <br>
                <input type="radio" name="unidadeDesejada" value="Celsius" /> Celsius
                <input type="radio" name="unidadeDesejada" value="Fahrenheit" /> Fahrenheit
                <input type="radio" name="unidadeDesejada" value="Kelvin" /> Kelvin
                <br>
                <input type="submit" value="Enviar" />
            </form>
        </h2>
             
    </body>
</html>
