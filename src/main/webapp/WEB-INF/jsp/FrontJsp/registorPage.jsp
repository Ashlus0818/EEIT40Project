<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextRoot" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>

<head>

<jsp:include page="IncludePage/head.jsp" />
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
   <jsp:include page="IncludePage/SliderRevolutionCSSFiles.jsp" />
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>前台註冊</title>

</head>

<body>
	<header class="style1">
		<div id="site-header">
			<jsp:include page="IncludePage/topBar.jsp" />
		</div>
	</header>


		<div class="container">
		
		<br/>
		<h1>Registor in Page</h1><br/>
<!-- 		<span id="userNamespan" style="color:red">請輸入email</span><br> -->
		<button id="checkusernamebtn" class="btn btn-primary">檢查帳號</button>
			<form id="registorForm" class="user" method="post" action="">
				<div class="form-group">
					
					<input name="username" type="text"
						class="form-control form-control-user" id="exampleInputEmail"
						aria-describedby="emailHelp" placeholder="username">
				</div>
				<div class="form-group">
					<input name="password" type="password" class=""
						id="exampleInputPassword" placeholder="Password">
				</div>
			<div class="form-group">
				<input name="userBirth" type="date"
					class="form-control form-control-user" id="userBirth"
					aria-describedby="emailHelp" placeholder="userBirth">
			</div>
			<div class="form-group">
				<input name="userGender" type="text"
					class="form-control form-control-user" id="userGender"
					aria-describedby="emailHelp" placeholder="userGender">
			</div>
			<div class="form-group">
				<input name="userAddress" type="text"
					class="form-control form-control-user" id="userAddress"
					aria-describedby="emailHelp" placeholder="userAddress">
			</div>
			<div class="form-group">
				<input name="userPhone" type="text"
					class="form-control form-control-user" id="userPhone"
					aria-describedby="emailHelp" placeholder="userPhone">
			</div>
			<!-- 				<div class="elm-btn"> -->
<!-- 				<input type="submit" value="Login" -->
<!-- 					class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal"> -->
<!-- 				</div> -->

			<div class="main-event">
				<section class="flat-filter">


					
					<div class="oneclickLogin">
						<button id="registorbtn" type="button" value="註冊"
							class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">註冊</button>
					</div>
					
					<div class="oneclickLogin">
						<button id="autoinsert" type="button" value="一鍵登入"
							class="themesflat-button outline ol-accent margin-top-40 hvr-shutter-out-horizontal">customer一鍵輸入</button>
					</div>
				</section>
			</div>

			<hr>
				
			</form>
		</div>
	

	

	<jsp:include page="IncludePage/footer.jsp" />
	<a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
	<!-- /#scroll-top -->

	<script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/main.js"></script>
<script src="${contextRoot}/FrontPage/javascript/jquery-ui.js"></script>
	<!-- Slider -->
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
	<script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
	<!-- Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading -->
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
	<script
		src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>
	<script>
		const link = document.getElementById("LoginRegister")
// 	console.log(link.textContent = 'Replacement link text')
// 	link.remove()
	
// 	Swal.fire({
// 		  icon: 'error',
// 		  title: '權限不足',
// 		  text: '請先登入',
// 		  footer: '<a href="">Why do I have this issue?</a>'
// 		})
	</script>
<script>
//一鍵輸入
$('#autoinsert').mouseenter(function(){
	$('input[name="username"]').val("customer@gmail.com")
	$('input[name="password"]').val("1234")
	$('input[name="userBirth"]').val("1970-10-25")
	$('input[name="userAddress"]').val("台北市信義區信安街90號")
	$('input[name="userGender"]').val("男")
	$('input[name="userPhone"]').val("09-1020-3040")
});

// $('#registorbtn').on("click",function(){
// 	Swal.fire({
// 		  title: 'Do you want to save the changes?',
// 		  showDenyButton: true,
// 		  confirmButtonText: 'Save',
// 		  denyButtonText: `Don't save`,
// 		}).then((result) => {
// 		  /* Read more about isConfirmed, isDenied below */
// 		  if (result.isConfirmed) {
// 			  //   window.location.href = '${contextRoot}/front/registorPage';
// 			  Swal.fire('Saved!', '', 'success')
// 			  .then(function(){
// 				  document.getElementById("registorForm").submit();
// 			  })
			  
// 		  } else if (result.isDenied) {
// 		  }
// 		})
// });


// $(document).click(function(){
// 	let formdata = new FormData();
// 	formdata.append("username", $('#exampleInputEmail').val());
// 	console.log($('#exampleInputEmail').val().length)
// 	$.ajax({
// 		url:"${contextRoot}/back/checkAppUserUserName",
// 		type:"POST",
// 		data: formdata,
//         processData: false, //google這兩個
//         contentType: false,
// 		success:function(res){
// 			console.log("success")
// 			if(res==='false'&& $('#exampleInputEmail').val().length>0){
// 				console.log(res)
// 				$('#registorbtn').show()
// 				$('#userNamespan').remove()
// 			}else if($('#exampleInputEmail').val().length==0){
// 				console.log(res)
// 				$('#registorbtn').hide()
// 				$('#userNamespan').text("請輸入email")
// 			}
// 			else{
// 				console.log(res)
// 				$('#registorbtn').hide()
// 				$('#userNamespan').text("請輸入其他email")
// 			}
			
// 		}
// 	})
// });

// 	let formdata = new FormData();
// 	formdata.append("username", $('#exampleInputEmail').val());
// 	console.log($('#exampleInputEmail').val().length)
// 	$.ajax({
// 		url:"${contextRoot}/back/checkAppUserUserName",
// 		type:"POST",
// 		data: formdata,
//         processData: false, //google這兩個
//         contentType: false,
// 		success:function(res){
// 			console.log("success")
// 			if(res==='false'&& $('#exampleInputEmail').val().length>0){
// 				console.log(res)
// 				$('#registorbtn').show()
// 				$('#userNamespan').remove()
// 			}else if($('#exampleInputEmail').val().length==0){
// 				console.log(res)
// 				$('#registorbtn').hide()
// 				$('#userNamespan').text("請輸入email")
// 			}
// 			else{
// 				console.log(res)
// 				$('#registorbtn').hide()
// 				$('#userNamespan').text("請輸入其他email")
// 			}
			
// 		}
// 	})

</script>
<script>
var state="1";

$('#checkusernamebtn').on('click',function(){
	let formdata = new FormData();
	formdata.append("username", $('#exampleInputEmail').val());
	$.ajax({
			url : "${contextRoot}/back/checkAppUserUserName",
			type : "POST",
			data : formdata,
			processData : false, //google這兩個
			contentType : false,
			success : function(res) {
				if (res == "true") {
					var state = "fff";
					console.log("another");
					alert("請輸入其他email");
				}else{
					alert("ok");
				}
			}
		});

	});
	
	console.log("this is after" + state)
	$('#registorbtn').on('click',function() {
						const re = /^(([.](?=[^.]|^))|[\w_%{|}#$~`+!?-])+@(?:[\w-]+\.)+[a-zA-Z.]{2,63}$/;
						if (!re.test($('#exampleInputEmail').val())) {
							return alert("請輸入email")
						}
						if ($('input[name="password"]').val() <= 0) {
							return alert("請輸入密碼(必須含有英文及數字)")
						}
						if ($('input[name="userBirth"]').val() <= 0) {
							return alert("請輸入生日")
						}
						if ($('input[name="userGender"]').val() <= 0) {
							return alert("請輸入性別")
						}
						if ($('input[name="userAddress"]').val() <= 0) {
							return alert("請輸入住址")
						}
						if ($('input[name="userPhone"]').val() <= 0) {
							return alert("請輸入連絡電話")
						}
						if (state = 4) {
							console.log(state)
							document.getElementById("registorForm").action = '${contextRoot}/front/registorNewUser';
							document.getElementById("registorForm").submit();
						}
						console.log(state + "this");
	});
</script>
<script>

</script>
</body>

</html>