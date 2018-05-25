<%-- 
    Document   : index
    Created on : 2018. 5. 25, 오후 9:25:08
    Author     : hs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>표현식 언어 예제</title>
    </head>
    <body>
        <jsp:useBean id="userBean" scope="page" class="cse.maven_ood.ch05.beans.UserInfo" />
        <jsp:setProperty name="userBean" property="name" value="홍길동" />
        <jsp:setProperty name="userBean" property="age" value="20" />
        
        사용자 이름: ${userBean.name} <br />
        나이: ${userBean[age]} <br />
        10년 뒤 나이: ${userBean.age + 10}
    </body>
</html>
