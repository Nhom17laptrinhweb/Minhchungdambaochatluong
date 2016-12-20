<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tìm Minh Chứng</title>
	<!-- bootstraps CSS & JS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="resource/js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

	<!-- Customize -->
	<link rel="stylesheet" href="resource/css/style.css">

</head>
<div class="container">
<body>
	<div id="wrapper">
		<div id="head">
				<img class="logo" src="img/skpt.jpg" alt="logo">
				<div class="dangnhap">
					<h4> Chào Sơn</h4>
					<a href="TrangChu_Admin.jsp">
					<input class="btn btn-info" type="button" name="dangxuat" value="Đăng xuất"> <br>
					</a>
				</div>

		</div> <!-- ket thuc head -->
    </div>


    <div id="container" >
    	<div id="main-content">
    		<div id="menu">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="2xem.jsp">Xem Minh Chứng</a>
						</div>
							<div class="collapse navbar-collapse navbar-ex1-collapse">
             					 <ul class="nav navbar-nav">
                		
                					<li class="active"><a href="1xemmc.jsp">Tìm Minh Chứng</a></li>
               						 <li class="active"><a href="1nhapminhchung.jsp">Tạo Minh Chứng</a></li>
                              
             					 </ul>                     
          				  </div><!-- /.navbar-collapse -->
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						
											
						
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
		</div>
		<h3>Mục Minh Chứng : ${param.a}</h3><br>
		<form class="form-horizontal" id ="contactform" role="form" method="post" action="">			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Mã minh chứng</label>
			    <div class="col-sm-3">			    
			      <input type="" class="form-control" id="inputndg" placeholder="Người được giao"name="mamc" value ="${param.f}">
			    </div>
			  </div>	
			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Người nhập</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Người được giao"name="nn" value ="${param.b}">
			    </div>
			  </div>		  	  		
			    
			    <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Mô tả</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Người được giao"name="mt" value ="${param.c}">
			    </div>
			  </div>
			  	
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Người tạo</label>
			    <div class="col-sm-3">
			      <input type="" class="form-control" id="inputndg" placeholder="Người được giao"name="nt" value ="${param.d}">
			    </div>
			  </div>	
			  
			  <div class="form-group">
			    <label for="inputPassword3" class="col-sm-3 control-label">Link File</label>
			    <div class="col-sm-6">
			    <p><a  href="DownLoadFile" class="btn btn-primary">Tải về</a> </p>
			      <!-- <input href="DownLoadFile.java" data-remote="false" id="btnphancong1" class="btn btn-info" type="submit" name="phancong"  data-toggle="modal" data-target="#myModal" value="Tải về"> -->
			    </div>
			    
			  </div>	
			  
			  <div class="form-group">
			  <div class="col-sm-offset-2 col-sm-10">
			  
			  </div></div>											
				</form>
				
				
				
		


	<div id="footer">
			<p>
				Ban kiểm định
				<br>
				<strong>Trường ĐH Sư phạm Kỹ thuật TP. Hồ Chí Minh</strong><br>
				&nbsp;Số 01, Võ Văn Ngân, phường Linh Chiểu, quận Thủ Đức<br>
				&nbsp;Email: MCDBCL@hcmute.edu.vn
				

			</p>
	</div>
</div>
</div>
</body>