<%-- 
    Document   : resultado
    Created on : 10/05/2020, 21:34:30
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
            Resultados
        </h1>
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.conversao.Medida" />
        <jsp:setProperty name="mybean" property="tipoConversao"/>
        <jsp:setProperty name="mybean" property="unidadeConversao"/>
        <jsp:setProperty name="mybean" property="unidadeDesejada"/>
        <jsp:setProperty name="mybean" property="valorConversao"/>

        <%
            boolean verificaErro = false;
            double resultado = 0;
            if (mybean.getTipoConversao().equals("Comprimento")) {
                if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao() * 1000;
                } else if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao() * 100000;
                } else if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao() * 1000000;
                } else if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao() / 1000;
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao() * 100;
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao() * 10000;
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao() / 100000;
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao() / 100;
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao() * 10;
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao() * 1000000;
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao() / 10;
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao() * 10000;
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao();
                } else {
                    verificaErro = true;
                }
            }

            if (mybean.getTipoConversao().equals("Massa")) {
                if (mybean.getUnidadeConversao().equals("Tonelada") && mybean.getUnidadeDesejada().equals("Quilograma")) {
                    resultado = mybean.getValorConversao() * 1000;
                } else if (mybean.getUnidadeConversao().equals("Tonelada") && mybean.getUnidadeDesejada().equals("Grama")) {
                    resultado = mybean.getValorConversao() * 1000000;
                } else if (mybean.getUnidadeConversao().equals("Tonelada") && mybean.getUnidadeDesejada().equals("Miligrama")) {
                    resultado = mybean.getValorConversao() * 1000000000;
                } else if (mybean.getUnidadeConversao().equals("Tonelada") && mybean.getUnidadeDesejada().equals("Tonelada")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Quilograma") && mybean.getUnidadeDesejada().equals("Tonelada")) {
                    resultado = mybean.getValorConversao() / 1000;
                } else if (mybean.getUnidadeConversao().equals("Quilograma") && mybean.getUnidadeDesejada().equals("Grama")) {
                    resultado = mybean.getValorConversao() * 1000;
                } else if (mybean.getUnidadeConversao().equals("Quilograma") && mybean.getUnidadeDesejada().equals("Miligrama")) {
                    resultado = mybean.getValorConversao() * 1000000;
                } else if (mybean.getUnidadeConversao().equals("Quilograma") && mybean.getUnidadeDesejada().equals("Quilograma")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Grama") && mybean.getUnidadeDesejada().equals("Tonelada")) {
                    resultado = mybean.getValorConversao() / 1000000;
                } else if (mybean.getUnidadeConversao().equals("Grama") && mybean.getUnidadeDesejada().equals("Quilograma")) {
                    resultado = mybean.getValorConversao() / 1000;
                } else if (mybean.getUnidadeConversao().equals("Grama") && mybean.getUnidadeDesejada().equals("Miligrama")) {
                    resultado = mybean.getValorConversao() * 1000;
                } else if (mybean.getUnidadeConversao().equals("Grama") && mybean.getUnidadeDesejada().equals("Grama")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Miligrama") && mybean.getUnidadeDesejada().equals("Tonelada")) {
                    resultado = mybean.getValorConversao() / 1000000000;
                } else if (mybean.getUnidadeConversao().equals("Miligrama") && mybean.getUnidadeDesejada().equals("Quilograma")) {
                    resultado = mybean.getValorConversao() / 1000000;
                } else if (mybean.getUnidadeConversao().equals("Miligrama") && mybean.getUnidadeDesejada().equals("Grama")) {
                    resultado = mybean.getValorConversao() / 1000;
                } else if (mybean.getUnidadeConversao().equals("Miligrama") && mybean.getUnidadeDesejada().equals("Miligrama")) {
                    resultado = mybean.getValorConversao();
                } else {
                    verificaErro = true;
                }
            }
            
            if (mybean.getTipoConversao().equals("Temperatura")) {
                if (mybean.getUnidadeConversao().equals("Celsius") && mybean.getUnidadeDesejada().equals("Fahrenheit")) {
                    resultado = (mybean.getValorConversao()*(1.8)) + 32;
                } else if (mybean.getUnidadeConversao().equals("Celsius") && mybean.getUnidadeDesejada().equals("Kelvin")) {
                    resultado = mybean.getValorConversao() + (float)273.15;
                } else if (mybean.getUnidadeConversao().equals("Celsius") && mybean.getUnidadeDesejada().equals("Celsius")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Fahrenheit") && mybean.getUnidadeDesejada().equals("Kelvin")) {
                    resultado = (mybean.getValorConversao() - 32) * 5/9 + (float)273.15;
                } else if (mybean.getUnidadeConversao().equals("Fahrenheit") && mybean.getUnidadeDesejada().equals("Celsius")) {
                    resultado = (mybean.getValorConversao() - 32) * 5/9;
                } else if (mybean.getUnidadeConversao().equals("Fahrenheit") && mybean.getUnidadeDesejada().equals("Fahrenheit")) {
                    resultado = mybean.getValorConversao();
                } else if (mybean.getUnidadeConversao().equals("Kelvin") && mybean.getUnidadeDesejada().equals("Celsius")) {
                    resultado = mybean.getValorConversao() - (float)273.15;
                } else if (mybean.getUnidadeConversao().equals("Kelvin") && mybean.getUnidadeDesejada().equals("Fahrenheit")) {
                    resultado = (mybean.getValorConversao() - (float)273.15) * 9/5 + 32;
                } else if (mybean.getUnidadeConversao().equals("Kelvin") && mybean.getUnidadeDesejada().equals("Kelvin")) {
                    resultado = mybean.getValorConversao();
                } else {
                    verificaErro = true;
                }
            }
        %>
        <h3>Tipo: <jsp:getProperty name="mybean" property="tipoConversao" /></h3>
        <h3>Unidade de Conversão: <jsp:getProperty name="mybean" property="unidadeConversao" /></h3>
        <h3>Valor: <jsp:getProperty name="mybean" property="valorConversao" /></h3>
        <h3>Unidade Desejada: <jsp:getProperty name="mybean" property="unidadeDesejada" /></h3>
        <h2><b>Resultado: </b>  <%=resultado%> </h2>
        <h2><font COLOR="#ff0000"><%if(verificaErro){out.print("Não é possível fazer esse tipo de conversão. Por favor, marque as opções corretas.");}%></font></h2>
    </body>
</html>
