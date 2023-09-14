<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_bbs.jsp" %> 
<jsp:useBean  id="dao" class="com.bbs.BbsDAO"/>  
<jsp:useBean id="dto" class="com.bbs.BbsDTO" /> 
<jsp:setProperty name="dto" property="*"/>
<%
  Map map = new HashMap();
  map.put("grpno",dto.getGrpno());
  map.put("ansnum", dto.getAnsnum());
  dao.upAnsnum(map); //기존 답변ansnum 1 증가
  boolean flag =  dao.createReply(dto); //답변 등록
    
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
	<%
		if(flag){
			out.println("글 답변 성공 입니다.");
		}else{
			out.println("글 답변 실패 입니다.");
		}
	%>
</div>
	<button class="btn btn-light" onclick="location.href='createForm.jsp'">다시등록</button>
	<button class="btn btn-light" onclick="list()">목록</button>
</div>
</body>
</html>