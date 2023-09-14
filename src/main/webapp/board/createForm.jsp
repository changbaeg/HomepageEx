<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/menu/top.jsp"/>
<div class="container mt-3">
  <h2>게시글 생성</h2>
  <form action="createProc.jsp"
        method="post">
    <div class="mb-3 mt-3">
      <label for="wname">작성자:</label>
      <input type="text" class="form-control" id="wname" placeholder="Enter name" name="wname">
    </div>
    <div class="mb-3">
      <label for="title">제목:</label>
      <input type="text" class="form-control" id="title" placeholder="Enter title" name="title">
    </div>
     <div class="mb-3 mt-3">
      <label for="comment">내용:</label>
      <textarea class="form-control" rows="5" id="comment" name="content"></textarea>
    </div>
    <div class="mb-3">
      <label for="pwd">비밀번호:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="passwd">
    </div>
    <button type="submit" class="btn btn-outline-dark">Submit</button>
  </form>
</div>
</body>
</html>