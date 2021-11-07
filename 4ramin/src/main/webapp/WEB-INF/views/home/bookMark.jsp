<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>4RAMIN</title>
    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    
    <script src="js/jquery.min.js"></script>
    
    <script type="text/javascript">
    	
    	function comList() {
    		$.ajax({
    			url : "comBookmarkList.do" ,
    			type : "get" ,
    			success : function(result) {
    				let json = JSON.parse(result) ;
    				for (let key of json) {
    					$("#company").append(
    						$("<tr />").append(
    							$("<td style='width:5cm;'/>").html("기업명 : " + key.com_name) ,
    							$("<td style='width:15cm;' />").html("기업소개 : " + key.com_intro) ,
    							$("<td style='width:8cm;' />").html("추가한 날짜 : " + key.marked_date) ,
    							$('<button onclick="delcompany(\'' + key.com_id + '\')" />').addClass('badge badge-danger').html("삭제")
    					)) ;
    				}
    			}
    		})
    	}
    	
    	function delcompany(com_id) {
    		var check = confirm("해당 즐겨찾기를 삭제하시겠습니까?") ;
    		if (check) {
    			$.ajax({
    				url : "comBookmarkDelete.do?com_id=" + com_id ,
    				type : "get" ,
    				data : {
    					com_id : com_id
    				} ,
    				success : function() {
    					alert("즐겨찾기가 삭제되었습니다") ;
    					$("#company").empty() ;
    					comList() ;
    				}
    			})
    		} else {
    			alert("즐겨찾기 삭제를 취소했습니다") ;
    		}
    	}
    	
    	comList() ;
    
    </script>
</head>
<body>    
    <section class="site-section" id="next">
      <div class="container">        
        <ul class="job-listings mb-5">
          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
            <a href="#"></a>
            <div class="job-listing-logo">
              <img src="images/job.jpg" alt="Image" class="img-fluid">
            </div>
			<div class="col-md-7 text-center">
            <h2 class="section-title mb-2">공고 즐겨찾기</h2>
          </div>
          </ul>
      	</div>
    <div align="center">
		<table class="type05" id="adt">
		</table>
	</div>
      	
		<h3 class="text-black mb-5 border-bottom pb-2"></h3>
      	
      	<div class="container">        
        <ul class="job-listings mb-5">
          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
            <a href="companySelectList.do"></a>
            <div class="job-listing-logo">
              <img src="images/company.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="col-md-7 text-center">
            <h2 class="section-title mb-2">기업 즐겨찾기</h2>
          </div>
          </ul>
      	</div>
    <div align="center">
		<table class="type05" id="company">
		</table>
	</div>
    </section>

    
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/stickyfill.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/jquery.animateNumber.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    
    <script src="js/bootstrap-select.min.js"></script>
    
    <script src="js/custom.js"></script>
</body>
</html>