<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/menu/top.jsp"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<title>Web Escape Game</title>
<style>
   h5{
      color: crimson;
      font-style: italic;
  }
  div{
  	text-align: center;
  }
</style>
</head>

<body>
<div class="container mt-5">
    <div class="row">
        <div class="col-md-8 offset-md-2 text-center">
            <h1>웹 탈출 게임</h1>
            <img src="image/bumb.png" width=503px;><br><br>
            <h3>현재 이 서버에는 서버를 폭파할 수 있는 핵폭탄이 심어져있습니다.</h3>
            <br><br>
            <h5>이곳을 얼른 탈출하세요. 탈출하지 못하면</h5>
            <h5>서버가 폭발합니다.</h5>
            <br><br>

            <h4> 당신은 현재 창문도 없는 아주 작은 방에 납치되었습니다. </h4>
            <h4> 오로지 탈출 통로는 문 하나만 있습니다. </h4>
            <h4> 하지만 그 문은 자물쇠가 걸려있습니다. </h4>
            <h4> 잠금을 해제하고 이 방을 나가봅시다. </h4>
            <br><br>

            <div id="game-container">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">자물쇠</h5>
                        <p class="card-text">숫자 3개를 입력해야 잠금이 풀립니다.</p>
                        <button id="show-hint-button" class="btn btn-outline-primary">
                        살펴보기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="toast-container position-fixed bottom-0 end-0 p-3">
    <div id="hint-toast" class="toast" role="alert" aria-live="assertive" aria-atomic="true">
        <div class="toast-header">
            <strong class="me-auto">힌트</strong>
            <small class="text-muted">지금</small>
            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">
            서버가 유지보수 중이거나 터졌을 때 발생하는 HTTP 응답코드는?
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
    $('#show-hint-button').click(function() {
        // 힌트 보기 버튼을 누르면 힌트 토스트 보이기
        var hintToast = new bootstrap.Toast(document.getElementById('hint-toast'));
        hintToast.show();
        
        // 초기 비밀번호 퍼즐 표시
        $('#game-container').html(`
            <div class="card">
                <div class="card-body">
                    <h5 class="card-title">비밀번호 입력</h5>
                    <p class="card-text">이 웹페이지에 폭탄이 설치되어져 있다고 한다 그 폭탄의 코드는?<br>
                        (숫자를 조합하여 초기 비밀번호를 입력하세요):</p>
                    <input type="number" id="initial-code-input" class="form-control mb-2" placeholder="숫자 3개를 입력하세요">
                    <button id="submit-code-button" class="btn btn-outline-success">입력</button>

                    <!-- if(code == 'Enter'){
                        word.innerHTML = "입력값: " + txt;
                    } -->

                </div>
            </div>
        `);

        // 초기 비밀번호 입력 처리
        $('#submit-code-button').click(function() {
            var initialCode = $('#initial-code-input').val();
            
            if (initialCode === '503') {
                // 비밀번호가 일치하면 탈출 성공 메시지 표시
                $('#game-container').html(`
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">탈출 성공</h5>
                            <p class="card-text">축하합니다! 방을 탈출하셨습니다.</p>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card">
                        <img class="card-img-center" src="image/end.gif" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text">이얏호~!~!!</p>
                        </div>
                    </div>
                `);
            } else {
                // 비밀번호가 일치하지 않을 경우 다시 시도하도록 안내
                // 5번 틀리면 폭발 (안함)
                $('#game-container').append(`
                    <div class="alert alert-danger mt-3" role="alert">
                        비밀번호가 일치하지 않습니다. <br> ESCAPE FAIL!
                    </div>
                    <img src="image/fail.png" width=503px; ><br><br>
                `);
            }
        });


    });

    //여기에 탈출 루트 추가

</script>
</body>
</html>
<jsp:include page="/menu/bottom.jsp"/>