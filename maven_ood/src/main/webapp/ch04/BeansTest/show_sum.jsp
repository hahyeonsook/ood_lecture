  <%-- 
    Document   : show_sum2
    Created on : 2018. 2. 27, 오후 10:00:47
    Author     : Prof. Jong Min Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:useBean id="sum" scope="page" class="cse.maven_ood.ch04.beans.SumBean" />
<jsp:setProperty  name="sum" property="n" />

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Beans 사용 예제</title>
    </head>
    <body>
        <% sum.calculate();%>
        계산 결과 1: <jsp:getProperty name="sum" property="result" /> <br />
        계산 결과 2: <%= sum.getResult()%> <br />
        계산 결과 3: ${sum.result}
    </body>
</html>
