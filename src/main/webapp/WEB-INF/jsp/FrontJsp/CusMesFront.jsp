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
<title>聯絡我們</title>
</head>
<body>
 <header class="style1">
    <div id="site-header">
      <jsp:include page="IncludePage/topBar.jsp" />

    </div>
  </header>
  
  <div class="page-title parallax parallax1 ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-content text-center">
                        <div class="breadcrumbs">
                            <ul>
                                <li><a href="${contextRoot}/front">首頁</a></li>     
                                <li class="blog"><a href="#">聯絡我們</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
</div> <!-- /.page-title -->
<div class="main-contact-1">
<section class="flat-map-content">
    <div class="container">
        <div class="row">
          <img src="${contextRoot}/FrontPage/image/cus01.jpeg" alt="" data-bgposition="center center" data-no-retina>   
        </div>
    </div>
</section> <!-- /flat-map-content-->
<section class="flat-get-in">
  <div class="container">
      <div class="row">
          <div class="col-lg-12">
              <div class="title-section">
                  <h3 class="our-product-title"><a href="#"> Contact Us </a></h3>
                  <div class="our-product-image">
                       <img src="${contextRoot}/FrontPage/image/homepage14.png" alt="image">
                  </div>
              </div> <!-- /title-section -->
         
               <form id="contactform" action="" method="post" accept-charset="utf-8" class="form-submit contact-form wpcf7-form">
                  <span class="wpcf7-form-control-wrap your-name">
                      <input type="text" tabindex="1" id="name" name="name" value="" class="wpcf7-form-control" placeholder="姓名" required>
                  </span>
                  <div class="flat-divider-margintop10px"></div>                                                           
                  <span class="wpcf7-form-control-wrap your-email">
                      <input type="email" tabindex="3" id="email" name="email" value="" class="wpcf7-form-control" placeholder="example@gmail.com" required>
                  </span>
                  <div class="flat-divider-margintop16px"></div>
                  <span class="wpcf7-form-control-wrap your-question">
                      <input type="text" tabindex="2" id="question" name="question" value="" class="wpcf7-form-control" placeholder="問題">
                  </span> 
                  <div class="flat-divider-margintop12px"></div>
                  <span class="wpcf7-form-control-wrap your-message">
                     <textarea name="message" tabindex="5" cols="40" rows="10" id="message" class="wpcf7-form-control wpcf7-textarea" placeholder="留言" required ></textarea>
                  </span>                                                             
                  <span class="wrap-submit submit-form">
                      <button name="submit" type="submit" id="submitButton" class="submit btn btn-styl hvr-shutter-out-horizontal wpcf7-form-control wpcf7-submit" >提交</button>
                  </span>                                                        
              </form>
          </div>
      </div>
  </div>
</section> 
</div> <!-- /about --> 
  
  <jsp:include page="IncludePage/footer.jsp" />
  <a id="scroll-top"><i class="fa fa-angle-right" aria-hidden="true"></i></a> <!-- /#scroll-top -->

  <script src="${contextRoot}/FrontPage/javascript/jquery.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/owl.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-countTo.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery-waypoints.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/bootstrap.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/jquery.easing.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/main.js"></script>

  <!-- Slider -->
  <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.tools.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/jquery.themepunch.revolution.min.js"></script>
  <script src="${contextRoot}/FrontPage/javascript/rev-slider.js"></script>
  <!-- Load Extensions only on Local File Systems ! The following part can be removed on Server for On Demand Loading -->
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.actions.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.carousel.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.kenburn.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.layeranimation.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.migration.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.navigation.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.parallax.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.slideanims.min.js"></script>
  <script src="${contextRoot}/FrontPage/rev-slider/js/extensions/revolution.extension.video.min.js"></script>
</body>
<script>
  // $(document).ready(function () {
  //     $('#submitButton').click(function () {
         
  //         var inputText = document.getElementById('name').value;
  //         var inputText2 = document.getElementById('email').value;
  //         var inputText3 = document.getElementById('question').value;
  //         var inputText4 = document.getElementById('text').value;

  //         var dtoObject = {"cusname": inputText,
  //                          "cusemail": inputText2,
  //                          "cusquest": inputText3,
  //                          "custext": inputText4
  //                         };
  //         var dtoJsonString = JSON.stringify(dtoObject);
         
  //           $.ajax({
  //             url: 'http://localhost:8080/myapp/cusmes',
  //             contentType: "application/json;charset=utf-8", 
  //             dataType: 'json',   
  //             method: 'post',
  //             data: dtoJsonString,
  //             success: function (request) {
                  
  //                 console.log(request);
                  
  //             },


  //             error: function (err) {
  //                 console.log("error ajax")
  //                 console.log(err)
  //             }
  //         })
          
          

  //     })
  // })


  let sendSubmit = document.querySelector('.submit btn btn-styl hvr-shutter-out-horizontal wpcf7-form-control wpcf7-submit');
sendSubmit.addEventListener("click",runSubmit,false);

function runSubmit(e){
  e.preventDefault();
  let mailSubmit = document.querySelector('.wpcf7-form-control').value;
  let textSubmit = document.querySelector('.wpcf7-form-control wpcf7-textarea').value;
  
  if(mailSubmit == ''||textSubmit == ''){ 
    alert('請輸入信箱');
  }else{
    let xhrSubmit = new XMLHttpRequest();
    xhrSubmit.open("post","https://hexschool-tutorial.herokuapp.com/api/signup",true);
    xhrSubmit.setRequestHeader("content-type","application/x-www-form-urlencoded");
    xhrSubmit.send("email="+mailSubmit+"&text="+textSubmit);
    xhrSubmit.onload=function (){
      if(xhrSubmit.value == ""){ //帳號密碼不可為空
        outmail.innerhtml = "請輸入信箱"
      };
		let strSubmit= JSON.parse(xhrSubmit.responseText).message;
		alert(strSubmit);
	  }  
    console.log(xhrSubmit.send);
  }
  reset(); //送出後，欄位進行清空
}

function reset(){ //送出後，欄位進行清空
  document.querySelector('email').value = "";
  document.querySelector('text').value = "";
  document.querySelector('name').value = "";
  document.querySelector('question').value = "";
}
</script>
</html>