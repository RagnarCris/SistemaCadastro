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
            float resultado = 0;
            if (mybean.getTipoConversao().equals("Comprimento")) {
                if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao() * 1000;
                } else if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao() * 100000;
                } else if (mybean.getUnidadeConversao().equals("Quilômetro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao() * 1000000;
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao() / 1000;
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao() * 100;
                } else if (mybean.getUnidadeConversao().equals("Metro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao() / 10000;
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao() / 100000;
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao() / 100;
                } else if (mybean.getUnidadeConversao().equals("Centímetro") && mybean.getUnidadeDesejada().equals("Milímetro")) {
                    resultado = mybean.getValorConversao() * 10;
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Quilômetro")) {
                    resultado = mybean.getValorConversao() * 1000000;
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Centímetro")) {
                    resultado = mybean.getValorConversao() / 10;
                } else if (mybean.getUnidadeConversao().equals("Milímetro") && mybean.getUnidadeDesejada().equals("Metro")) {
                    resultado = mybean.getValorConversao() * 10000;
                } else{
                    out.print("Não é possível fazer essa conversão!");
                }
            }
        %>
        <h3>Tipo: <jsp:getProperty name="mybean" property="tipoConversao" /></h3>
        <h3>Unidade de Conversão: <jsp:getProperty name="mybean" property="unidadeConversao" /></h3>
        <h3>Valor: <jsp:getProperty name="mybean" property="valorConversao" /></h3>
        <h3>Unidade Desejada: <jsp:getProperty name="mybean" property="unidadeDesejada" /></h3>
        <h2><b>Resultado: </b>  <%=resultado%> </h2>

    </body>
</html>
