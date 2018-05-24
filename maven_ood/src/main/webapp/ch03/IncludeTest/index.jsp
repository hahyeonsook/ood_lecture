<%-- 
    Document   : index
    Created on : 2018. 3. 4, 오후 10:01:48
    Author     : skylo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Include Test 프로젝트</title>
    </head>
    <body>
        <%@include file="header.jspf" %>
        본문 내용이 들어갈 자리입니다.  
        <jsp:directive.include file="footer.jspf" />
    </body>
</html>
