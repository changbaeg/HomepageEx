<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ page import="java.util.*" %>
<%@ page import="com.utility.*" %>
<%@ page import="com.poll.*" %>
<%@ page import="java.time.LocalDate" %> <!-- 투표기간 종료확인 -->

<%  
    request.setCharacterEncoding("utf-8"); 
    String root = request.getContextPath();
%>