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
        <jsp:useBean id="mybean" scope="session" class="org.mypackage.cadastro.Pessoa" />
        <jsp:setProperty name="mybean" property="nome"/>
        <jsp:setProperty name="mybean" property="idade"/>
        <jsp:setProperty name="mybean" property="sexo"/>
        <jsp:setProperty name="mybean" property="peso"/>
        <jsp:setProperty name="mybean" property="altura"/>
        
        <p>Nome: <jsp:getProperty name="mybean" property="nome" /></p>
        <p>Idade <jsp:getProperty name="mybean" property="idade" /></p>
        <p>Sexo: <jsp:getProperty name="mybean" property="sexo" /></p>
        <p>Peso: <jsp:getProperty name="mybean" property="peso" /></p>
        <p>Altura: <jsp:getProperty name="mybean" property="altura" /></p>
        <%!public double calculaIMC(double peso, double altura){
            altura = altura*altura;
            return peso/altura;
        }%>
        
        <p><b>IMC: </b> <%out.println(calculaIMC(mybean.getPeso(),mybean.getAltura()));%>
    </body>
</html>
