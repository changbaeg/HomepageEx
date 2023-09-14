<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/menu/top.jsp"/>

<style>
	.nav-link{
		color: gray;
	}
	img{
		max-width: 100%;
		width: auto\9 !important;
		width: auto !important;
		height: auto;
	}
</style>
<script>
   // Set the date we're counting down to
      var countDownDate = new Date("Feb 23, 2024 00:00:00").getTime();

      // Update the count down every 1 second
      var x = setInterval(function() {

        // Get today's date and time
        var now = new Date().getTime();
          
        // Find the distance between now and the count down date
        var distance = countDownDate - now;
          
        // Time calculations for days, hours, minutes and seconds
        var days = Math.floor(distance / (1000 * 60 * 60 * 24));
        var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((distance % (1000 * 60)) / 1000);
          
        // Output the result in an element with id="demo"
        document.getElementById("demo").innerHTML = days + "D " + hours + "H "
        + minutes + "M " + seconds + "S ";
          
        // If the count down is over, write some text 
        if (distance < 0) {
          clearInterval(x);
          document.getElementById("demo").innerHTML = "EXPIRED";
        }
      }, 1000);
</script>
      
<div class="container mt-5">
  <div class="row">
    
   <div class="col-sm-8">
      <h2>Full Stack🌕</h2>
      <h5>Web Page Training, Sep 4, 2023</h5>
      <div class="fakeimg">Website creation practice project</div>
      <p>No Concept</p>
      <p>My favorite interest is NASA & Christopher Nolan the director of Interstellar.</p>

	<div class="mt-5 p-4 bg-dark text-white text-center">
	  <img src="images/blackholl.gif" alt="main home"/>
	  <p>Black Hole</p>
	</div>

      <h2 class="mt-5">The day the full stack process ends:</h2>
      <h5>I hope it ends soon, Feb 23, 2024</h5>
      <div class="fakeimg">smile</div>
      <p>No Concept</p>
      <p>A day that starts with a sunset and ends with a snowman.</p>
      <p>I will finally find myself.</p>
      <h1 style="text-align:right;">D-Day: </h1>
      <h1 id="demo" style="text-align:right;"></h1>
    </div>
    
      <div class="col-sm-4 text-lg-end">
      <h2>About the project</h2>
      <h5>Photo of this:)</h5>
      <div> <img src="images/main.jpg" style="width:300px; height:550px;"/></div>
      <p>I don't know what concept to catch..</p>
      <h3 class="mt-4">Links</h3>
      <p>This is the same link as the link in the menu above. Only list.</p>
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link" href="/board/list.jsp">Board</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/notice/list.jsp">Notice</a>
        </li>

          <li class="nav-item">
          <a class="nav-link" href="/poll/poll.jsp#section1">Poll</a>
          </li>
 		<li class="nav-item">
          <a class="nav-link" href="/game/snake.jsp">Snake Game</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/game/level1.jsp">Escape Game</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#">Coming soon..</a>
        </li>
      </ul>
      <hr class="d-sm-none">
    </div>
    
  </div>
</div>
    
<!-- 그리드 -->
<!--   <div class="container-fluid">
    <div class="row">
      <div class="col-8 bg-warning p-4">
        *전체글
        <div class="row">
          <div class="col-6 bg-light p-2">공지사항</div>
          <div class="col-6 bg-danger p-2">게시판</div>
        </div>
      </div>
      <div class="col-4 bg-secondary p-4">투표</div>
    </div>
  </div> -->
  
<jsp:include page="/menu/bottom.jsp"/>