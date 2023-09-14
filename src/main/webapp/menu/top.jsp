<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  String root = request.getContextPath(); %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
   <meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- bootstrap -->    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<!-- icon -->
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@100&family=Source+Sans+Pro:wght@300&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/71c72323b0.js" crossorigin="anonymous"></script>
<!-- font -->
<style>
	@font-face {
	    font-family: 'KCC-Ganpan';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.0/KCC-Ganpan.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	div{
		font-family: 'KCC-Ganpan', cursive;
	}
/* dark mode */

</style>

</head>
<body>
<!-- Menu -->
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<div class="container-fluid">
<a class="navbar-brand" href="<%=root %>/index.jsp">
<i class="fa-solid fa-house" style="color: #f2f2f2;"></i>
</a>

<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
</button>
<div class="collapse navbar-collapse justify-content-between" id="collapsibleNavbar">
    <ul class="navbar-nav">
        <li class="nav-item dropdown" data-bs-theme="dark">
          <a
            class="nav-link dropdown-toggle"
            data-bs-toggle="dropdown"
            href="#"
          >
            Board</a
          >
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<%=root %>/board/list.jsp">게시글 목록</a></li>
            <li><a class="dropdown-item" href="<%=root %>/board/createForm.jsp">게시글 생성</a></li>
          </ul>
        </li>
           <li class="nav-item dropdown" data-bs-theme="dark">
          <a
            class="nav-link dropdown-toggle"
            data-bs-toggle="dropdown"
            href="#"
          >
            Notice</a
          >
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="<%=root %>/notice/list.jsp">공지사항 목록</a></li>
			<li><a class="dropdown-item" href="<%=root %>/notice/createForm.jsp">공지사항 생성</a></li>
          </ul>
        </li>
        <li class="nav-item"><a class="nav-link" href="<%=root%>/poll/poll.jsp#section1">Poll</a></li>
        <li class="nav-item"><a class="nav-link" href="/game/snake.jsp">Snake Game</a></li>
		           <li class="nav-item dropdown" data-bs-theme="dark">
          <a
            class="nav-link dropdown-toggle"
            data-bs-toggle="dropdown"
            href="#"
          >
            Escape Game</a
          >
          <ul class="dropdown-menu" >
            <li><a class="dropdown-item" href="<%=root%>/game/level1.jsp">Level 1&nbsp;&nbsp;<i class="fa-solid fa-lock-open" style="color: #adb5bd;"></i></a></li>
			<li><a class="dropdown-item" href="#">Level 2&nbsp;&nbsp;<i class="fa-solid fa-lock" style="color: #adb5bd;"></i></a></li>
			<li><a class="dropdown-item" href="#">Level 3&nbsp;&nbsp;<i class="fa-solid fa-lock" style="color: #adb5bd;"></i></a></li>
          </ul>
        </li>
</ul>

<ul class="navbar-nav">
    <li class="nav-item dropdown" data-bs-theme="dark">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">More</a>
        <ul class="dropdown-menu">
            <li><a id="drop" class="dropdown-item" href="https://developer.mozilla.org/ko/docs/Web/HTTP/Status/503" target="_blank">Escape Game 정답</a></li>
            <li><a id="drop" class="dropdown-item" href="https://github.com/changbaeg/HomepageEx" target="_blank">깃허브[Open source]</a></li>
        </ul>
    </li>
    <li class="nav-item"><a class="nav-link" href="<%=root%>/login/login.jsp">Sign in</a></li>   
    <li class="nav-item"><a class="nav-link" href="<%=root%>/login/signUp.jsp">Sign up</a></li> 
    </ul>
</div>
</div>
</nav>
</body>
</html>