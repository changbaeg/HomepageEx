<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/menu/top.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Login Page</title>
	<script>
    // 유효성 검증 예정
    window.onload = function() {
        document.frm.onsubmit = function() {
            console.log(document.frm.id.value);
            console.log(document.frm.pw.value);
            console.log(document.frm.pwChk.value);
            if(document.frm.id.value.length < 5) {
                alert("아이디를 입력하세요")
                return false;
            }
            else if(document.frm.pw.value !== document.frm.pwChk.value) {
                alert("비밀번호 일치여부를 확인하세요")
                return false;
            }
        }
    }
</script>
</head>
<body>
<div class="container mt-5">
  <h2 style="text-align: center;">회원가입</h2>
	<div class="col-6 mx-auto">
		<form class="form-control" action="createProc.jsp" method="post">
			<label for="userId" class="form-label">아이디</label>
			<input type="text" name="user_id" id="userId" class="form-control">
			<label for="password" class="form-label">비밀번호</label>
			<input type="text" name="user_pw" id="password" class="form-control">
			<label for="password" class="form-label">비밀번호 확인</label>
			<input type="text" name="user_pw" id="confirm_password" class="form-control">
			<div class="d-grid">
				<button class="btn btn-dark btn-block my-3" onclick="location.href='signUpProc.jsp'">회원가입</button>
			</div>
				<button type="reset" class="btn btn-outline-dark">다시입력</button>
		</form>
	</div>
</div>
</body>
</html>
<jsp:include page="/menu/bottom.jsp"/>