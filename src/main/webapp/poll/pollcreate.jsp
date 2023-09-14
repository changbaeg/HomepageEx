<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>poll 생성</title>

<script>
	let i = 1;
	let num = 0;
	function addItem() {

		if (i > 9)
			return;

		i++;
		let sp = document.createElement('span')
		sp.className = "input-group-text";
		sp.innerText = i;
		let ele = document.createElement('input');
		ele.type = 'text';
		ele.className = "form-control";
		ele.name = "items";
		ele.id = `item${i}`;
		let items = document.getElementById('items-div');
		let dive = document.createElement('div');
		dive.className = "input-group";
		dive.appendChild(sp);
		dive.appendChild(ele);
		items.appendChild(dive);

	}

	function checkp(f) {
		if (f.question.value.length == 0) {
			alert('설문을 입력하세요');
			f.question.focus();
			return false;
		}
		if (f.sdate.value.length == 0) {
			alert('시작날짜를 선택하세요');
			f.sdate.focus();
			return false;
		}
		if (f.edate.value.length == 0) {
			alert('종료날짜를 선택하세요');
			f.edate.focus();
			return false;
		}

		if (document.querySelector('#item1').value.length == 0) {
			alert('첫번째 항목을 입력하세요');
			document.querySelector('#item1').focus();
			return false;
		}

		if (document.querySelector('#items-div').childElementCount < 1) {
			alert('항목을 1개이상 입력하세요');
			return false;
		}

	}
</script>
</head>
<body>
	<div class="container mt-3">
		<h4>설문 작성</h4>
		<form action="./createProc.jsp" method="post"
			onsubmit='return checkp(this)'>
			<div class="mt-3 ">
				<label class="" for="question">설문 :</label> 
				<input type="text" class="form-control" id="question" 
				       placeholder="설문 작성" name="question">
			</div>
			
			<div class="mt-3">
				<span class="">항목들 :</span>
				<div class="input-group" id='itemi'>
					<span class="input-group-text">1</span> 
					<input type="text" class="form-control" name="items" id="item1">
					<button type="button" class="btn btn-light" onclick="addItem()">add</button>
				</div>
				<div id="items-div"></div>
			</div>
			
			<div class="input-group mt-3">
				<label class="input-group-text">시작일 :</label>	
				<input type="date" name="sdate" id="sdate" class="form-control">
			</div>
			
			<div class="input-group mt-3">
				<label class="input-group-text">종료일 :</label>
				<input type="date" name="edate" id="edate" class="form-control">
			</div>

			<div class="input-group mt-3">
				<label class="input-group-text">복수 투표 :</label>
				<div class="form-check">
					<input type="radio" name="type" value="1"
						class="form-check-input m-2" id="yes" checked>
				    <label class="form-check-label" for="yes">yes</label>
				</div>
				<div class="form-check">
					<input type="radio" name="type" value="0"
						class="form-check-input m-2" id="no"> 
					<label class="form-check-label" for="no">no</label>
				</div>
			</div>
			
			<div class="m-3">
				<button class="btn btn-light">Submit</button>
				<a class="btn btn-light" href="#section1">설문 목록</a>
			</div>
		</form>
	</div>
</body>
</html>