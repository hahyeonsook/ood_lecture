<%-- 
    Document   : index
    Created on : 2018. 5. 25, 오후 9:39:50
    Author     : hs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mytags.tld" prefix="mytags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Tag Handler 사용 예제</title>
    </head>
    <body>
        <mytags:hello user="홍길동" count="5"/>
        <mytags:hello user="전우치">
            오늘은 날씨가 아주 좋습니다.
        </mytags:hello>
        
    </body>
</html>
