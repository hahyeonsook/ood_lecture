<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer.jsp</title>
    </head>
    <body>
        <hr>
        페이지 하단에 들어갈 내용입니다. <br>
        날짜: <%= request.getParameter("date") %>
        사용자: <%= request.getParameter("user") %>
    </body>
</html>
