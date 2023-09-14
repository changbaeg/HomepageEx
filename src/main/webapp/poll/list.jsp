<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/ssi/ssi_poll.jsp"%>
<jsp:useBean id="service" class="com.poll.PollService" />
<% 
//검색관련------------------------
String col = Utility.checkNull(request.getParameter("col"));
String word = Utility.checkNull(request.getParameter("word"));

if (col.equals("total")) {
    word = "";
} 

//페이지관련-----------------------
int nowPage = 1;//현재 보고있는 페이지
if (request.getParameter("nowPage") != null) {
    nowPage = Integer.parseInt(request.getParameter("nowPage"));
}
int recordPerPage = 5;//한페이지당 보여줄 레코드갯수

int sno = ((nowPage - 1) * recordPerPage); //디비에서 가져올 시작위치
int eno = 5;//디비에서 가져올 레코드 갯수

Map map = new HashMap();
map.put("col", col);
map.put("word", word);
map.put("sno", sno);
map.put("eno", eno);

//설문 목록
Vector<PollDTO> list = service.getList(map);
Iterator<PollDTO> iter = list.iterator();

int total = service.total(col, word);

String url = "poll.jsp";

String paging = Utility.paging(total, nowPage, recordPerPage, col, word, url);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>설문 목록</title>
<script>

function section(n) {

    num = n;
    console.log(num);
    let url = 'poll.jsp?num=' + num;
    console.log(url);
    //location.href='#section2';
    location.href = url + '#section2';

}
</script>
</head>
<body>
  <div class="container mt-3">
      <h4>설문 목록</h4>
      <!--검색 시작 -->
      <form action="./poll.jsp#section1" class='pt-1'>
          <div class="row">
              <div class='col'>
                  <select class="form-select" name="col">
                      <option value="question"
                          <%if (col.equals("question"))out.print("selected");%>>설문</option>
                      <option value="sdate"
                          <%if (col.equals("sdate"))out.print("selected");%>>시작날짜</option>
                      <option value="edate"
                          <%if (col.equals("edate"))out.print("selected");%>>종료날짜</option>
                      <option value="total"
                          <%if (col.equals("total"))out.print("selected");%>>전체출력</option>
                  </select>
              </div>
              <div class="col">
                  <input type="text" class="form-control" placeholder="Enter 검색어"
                      name="word" value="<%=word%>">
              </div>
              <div class='col'>
                  <button type="submit" class="btn btn-dark">검색</button>
              </div>
          </div>
      </form>

      <!-- 검색 끝  -->
      <table class="table table-hover mt-2">
          <thead>
              <tr>
                  <th>번호</th>
                  <th>제목</th>
                  <th>시작일 ~ 종료일</th>
              </tr>
          </thead>

          <%
          if (list.size() == 0) {
          %>
          <tbody>
            <tr>
              <td colspan='3'>등록된 설문이 없습니다.</td>
            </tr>
          </tbody>
          <%
          } else {
          		while (iter.hasNext()) {
              		PollDTO dto = iter.next();
          %>
          <tbody>
            <tr>
              <td><%=dto.getRownum()%></td>
              <td><a class="nav-link"
                      href="javascript:section('<%=dto.getNum()%>')"><%=dto.getQuestion()%></a></td>
              <td><%=dto.getSdate()%> ~ <%=dto.getEdate()%></td>
           </tr>
          </tbody>
          <%
         	  } //while end
          } //if end
          %>
      </table>
      <%=paging%>
  </div>
</body>
</html>
<jsp:include page="/menu/bottom.jsp"/>