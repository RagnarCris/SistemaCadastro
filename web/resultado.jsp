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
        
        <h3>Nome: <jsp:getProperty name="mybean" property="nome" /></h3>
        <h3>Idade <jsp:getProperty name="mybean" property="idade" /></h3>
        <h3>Sexo: <jsp:getProperty name="mybean" property="sexo" /></h3>
        <h3>Peso: <jsp:getProperty name="mybean" property="peso" /></h3>
        <h3>Altura: <jsp:getProperty name="mybean" property="altura" /></h3>
        <%!public float calculaIMC(float peso, float altura){
            altura = altura*altura;
            float imc = peso/altura;
            return peso/altura;
        }%>
        
        <h2><b>IMC: </b> <%out.println(calculaIMC(mybean.getPeso(),mybean.getAltura()));%>
    </body>
</html>
