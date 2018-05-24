<%-- 
    Document   : index
    Created on : 2018. 4. 14, 오후 8:13:21
    Author     : Prof. Jong Min Lee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>&lt;jsp:include&gt; 액션 예제</title>
    </head>
    <body>
        <jsp:include page="header.jsp" />
        본문 내용입니다.
        <% request.setCharacterEncoding("UTF-8"); %>
        <jsp:include page="footer.jsp">
            <jsp:param name="date" value="<%= new java.util.Date() %>"/>
            <jsp:param name="user" value="홍길동"/>
        </jsp:include>
    </body>
</html>
