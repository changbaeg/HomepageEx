<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_poll.jsp" %> 
<jsp:useBean  id="dao" class="com.poll.PollDAO"/>  
<jsp:useBean id="dto" class="com.poll.PollDTO" /> 
<jsp:setProperty name="dto" property="*"/>
<%  
Map map = new HashMap();
map.put("num", dto.getNum());

boolean flag = false;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>투표 삭제</title>
<script>
function list(){
	let url = "list.jsp";
	url += "?nowPage=<%=request.getParameter("nowPage")%>";
	url += "&col=<%=request.getParameter("col")%>";
	url += "&word=<%=request.getParameter("word")%>";
	
	location.href= url;
}
</script>
</head>
<body>
<jsp:include page="/menu/top.jsp" />
<div class="container">
<div class="container p-5 my-5 border">
</div>
	<button class="btn btn-light" onclick="location.href='createForm.jsp'">다시등록</button>
	<button class="btn btn-light" onclick="list()">목록</button>
</div>
</body>
</html>