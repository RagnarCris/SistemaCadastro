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
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.cadastro.Pessoa" />
        <jsp:setProperty name="mybean" property="nome"/>
        <jsp:setProperty name="mybean" property="idade"/>
        <jsp:setProperty name="mybean" property="sexo"/>
        <jsp:setProperty name="mybean" property="peso"/>
        <jsp:setProperty name="mybean" property="altura"/>
        <h1>Olá, <jsp:getProperty name="mybean" property="nome" />!</h1>
        <% float peso; //Recebe o que foi passado pelo formulário
        %>
    </body>
</html>
