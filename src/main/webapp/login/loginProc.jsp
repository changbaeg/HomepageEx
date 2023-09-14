<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_login.jsp" %> 
<jsp:useBean  id="dao" class="com.login.LoginDAO"/>  
<jsp:useBean id="dto" class="com.login.LoginDTO" /> 
<jsp:setProperty name="dto" property="*"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login success page</title>
</head>
<body>
<jsp:include page="/menu/top.jsp" />
 <h1>login success!</h1>
    <p>${id}</p>
	<p>${pw}</p>	
</body>
</html>