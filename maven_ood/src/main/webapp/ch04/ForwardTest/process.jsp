<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>process.jsp</title>
    </head>
    <body>
        <%-- request.setCharacterEncoding("UTF-8"); --%>
        반갑습니다. <%= request.getParameter("user") %> 님!
    </body>
</html>
