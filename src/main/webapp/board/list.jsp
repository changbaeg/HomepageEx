<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_bbs.jsp" %> 
<jsp:useBean id="dao" class="com.bbs.BbsDAO" />

<%
//검색부분
	String col = Utility.checkNull(request.getParameter("col"));
	String word = Utility.checkNull(request.getParameter("word"));
	
	if(col.equals("total")) word = "";
	
	
	//페이지 처리 
	int nowPage = 1; //현제 페이지 
	if(request.getParameter("nowPage")!=null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	
	int recordPerPage = 3; //한페이지당 보여줄 레코드 갯수 -> 디비에서 가져올 갯수
	
	int sno = (nowPage-1) * recordPerPage;  //디비에서 가져올 시작 레코드 순번
	
	Map map = new HashMap();
	map.put("col",col);
	map.put("word", word);
	map.put("sno", sno);
	map.put("eno", recordPerPage);

	List<BbsDTO> list = dao.list(map);
	
	int total = dao.total(col, word);
	
	String url = "list.jsp";
	
	String paging = Utility.paging(total, nowPage, recordPerPage, col, word, url);
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function read(bbsno){
	let url = "read.jsp";
	url += "?bbsno="+bbsno;
	url += "&nowPage=<%=nowPage%>";
	url += "&col=<%=col%>";
	url += "&word=<%=word%>";
	
	location.href=url;
}
</script>
</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class='container mt-3'>
 <h2>게시글 목록</h2>
 <form action="list.jsp">
 <div class="row mb-3 mt-3"> 
   <div class="col">  
     <select class="form-select"  name="col">
      <option value="wname" 
      <% if(col.equals("wname")) out.print("selected");%>
      >성명</option>
      <option value="title" 
      <% if(col.equals("title")) out.print("selected");%>
      >제목</option>
      <option value="content"
      <% if(col.equals("content")) out.print("selected");%>
      >내용</option>
      <option value="title_content" 
      <% if(col.equals("title_content")) out.print("selected");%>
      >제목+내용</option>
      <option value="total"
      <% if(col.equals("total")) out.print("selected");%>
      >전체출력</option>
    </select>
   </div>
   <div class="col">
       <input type="search" class="form-control" name="word" required="required" value="<%=word%>">
   </div>
   <div class="col">
    <button type="submit" class="btn btn-outline-dark">검색</button>
    <button type="button" class="btn btn-outline-dark" onclick="location.href='createForm.jsp'">등록</button>
   </div>
  </div>
  </form>        
  <table class="table table-striped">
    <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>작성자</th>
        <th>조회수</th>
        <th>등록날짜 </th>
        <th>grpno</th>
        <th>indent</th>
        <th>ansnum </th>
      </tr>
    </thead>
    <tbody>
    
<% if(list.size() == 0) { %>
      <tr><td colspan = '8'>등록된 글이 없습니다.</td></tr>   
<% }else{
	
   for(int i=0; i<list.size(); i++){
	  BbsDTO dto = list.get(i); 
%>  
      <tr>
        <td><%=dto.getRownum() %></td>
        <td>
        <%
        	for(int r=0; r<dto.getIndent();r++){ 
        		out.print("&nbsp;&nbsp;");
        	}
            if(dto.getIndent()>0){
            	out.print("<img src='../images/re.jpg'>");
            }
        %>
        <a href="javascript:read('<%=dto.getBbsno() %>')"><%=dto.getTitle() %></a>
        <% if(Utility.compareDay(dto.getWdate())) {    	
        	out.print("<img src='../images/new.gif'>");
           } 
        %>
        </td>
        <td><%=dto.getWname() %></td>
        <td><%=dto.getViewcnt() %></td>
        <td><%=dto.getWdate() %></td>
       <td><%=dto.getGrpno() %></td>
        <td><%=dto.getIndent() %></td>
        <td><%=dto.getAnsnum() %></td>
      </tr>
<%   }  //for end 
	} //if end
%>
   </tbody>  
  </table>
   <%=paging %>
</div>
<jsp:include page="/menu/bottom.jsp"/>
</body>
</html>