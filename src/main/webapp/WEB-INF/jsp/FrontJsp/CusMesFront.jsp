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
       
               <form id="contactform" action="${contextRoot}/message/addCusMessage" method="get" accept-charset="utf-8" class="form-submit contact-form wpcf7-form">
                  <span class="wpcf7-form-control-wrap your-name">
                      <input type="text" tabindex="1" id="messageName" name="messageName" value="" class="wpcf7-form-control" placeholder="姓名" required>
                  </span>
                  <div class="flat-divider-margintop10px"></div>                                                           
                  <span class="wpcf7-form-control-wrap your-email">
                      <input type="email" tabindex="3" id="messageEmail" name="messageEmail" value="" class="wpcf7-form-control" placeholder="example@gmail.com" required onkeydown="return checkEmailKey(event.key)">
                  </span>
                  <div class="flat-divider-margintop16px"></div>
                  <span >
                      <select id="messageQuest" name="messageQuest" class="wpcf7-form-control" aria-label="Default select example">
						  <option selected disabled>選擇下列問題</option>
						  <option value="產品問題">產品問題</option>
						  <option value="訂單問題">訂單問題</option>
						  <option value="品項問題">品項問題</option>
					</select>
                  </span> 
                  <div class="flat-divider-margintop12px"></div>
                  <span class="wpcf7-form-control-wrap your-message">
                     <textarea name="messagetext" tabindex="5" cols="40" rows="10" id="messagetext" class="wpcf7-form-control wpcf7-textarea" placeholder="留言" required ></textarea>
                  </span>                                                             
                  <span class="wrap-submit submit-form">
                      <button name="submit" type="submit" id="submitButton" class="submit btn btn-styl hvr-shutter-out-horizontal wpcf7-form-control wpcf7-submit">提交</button>
                  </span>   
               <span class="wrap-submit submit-form" >
                  <button class="submit  hvr-shutter-out-horizontal wpcf7-form-control wpcf7-submit" id="autoinsert" type="button" value="" style="background-color:white;padding:5px;margin-bottom:10px;"></button></span>                     
             <span class="wrap-submit submit-form" >
                  <button class="submit  hvr-shutter-out-horizontal" id="autoinsert2" type="button" value="" style="background-color:white;padding:5px;margin-bottom:10px;"></button></span>                     
              
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
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</body>
<script>
 


 /*  $(document).ready(function (){
    $("#submitButton").click(function(){
    	 Swal.fire({
    		 title: '確定提交?',
		        showDenyButton: true,
		        showCancelButton: true,
		        confirmButtonText: 'Save',
		        denyButtonText: `Don't save`, 
    	 }).then((result) => {
    		 if (result.isConfirmed) {
		          Swal.fire('新增成功!', '', 'success')
		            })
    	 } else if (result.isDenied) {
	          Swal.fire('未完成修改', '', 'info')
	        }
    });
  });   */
  
 $('#autoinsert').click(function(){
	$('input[name="messageName"]')  .val("陳德瑞")
	$('input[name="messageEmail"]')  .val("tony445679@gmail.com")
	$('select[name="messageQuest"]')  .val("產品問題")
	$('textarea[name="messagetext"]')  .val("怎麼喝起來有怪味道")
}); 
  $('#autoinsert2').click(function(){
		$('input[name="messageName"]')  .val("廖筱婕")
		$('input[name="messageEmail"]')  .val("eeit40.first1@gmail.com")
		$('select[name="messageQuest"]')  .val("訂單問題")
		$('textarea[name="messagetext"]')  .val("選錯付款方式，我要改成分期付款")
	}); 
  
  $(document).keydown(function(event){
	  $('input[name="messageName"]')  .val("兔兔")
		$('input[name="messageEmail"]')  .val("eeit40.first1@gmail.com")
		$('select[name="messageQuest"]')  .val("品項問題")
	$('textarea[name="messagetext"]')  .val("收到商品的商品跟訂購的不相符")
	   });  
	   
	function checkEmailKey(key) {
		   return (key >= 'a' && key <= 'z' || key >= '0' && key <= '9') ||
		     ['.','+','@','-','ArrowLeft','ArrowRight','Delete','Backspace'].includes(key);
		 };
		
</script>
</html>