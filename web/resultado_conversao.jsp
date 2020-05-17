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
        <jsp:setProperty name="mybean" property="valorConversao"/>
        
        <h3>Tipo: <jsp:getProperty name="mybean" property="tipoConversao" /></h3>
        <h3>Unidade de Conversão: <jsp:getProperty name="mybean" property="unidadeConversao" /></h3>
        <h3>Valor: <jsp:getProperty name="mybean" property="valorConversao" /></h3>
        <h3>Unidade Desejada: <jsp:getProperty name="mybean" property="unidadeDesejada" /></h3>
        <h2><b>Resultado: </b> <%
            if(mybean.getTipoConversao() == "Comprimento") {
                
            }
            else if(mybean.getTipoConversao() == "Massa") {
                
            }
            else if(mybean.getTipoConversao() == "Temperatura") {
                
            }
            %>
                    
                </tbody>
            </table>

    </body>
</html>
