<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Nhập Minh Chứng</title>
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
					<a href="TrangChu_Admin.jsp"><input class="btn btn-info" type="button" name="dangxuat" value="Đăng xuất"> <br></a>
					
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
							<a class="navbar-brand" href="1nhapminhchung.jsp">Nhập Minh Chứng</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								
								<li class="active"><a href="1xemmc.jsp">Xem Minh Chứng Được Giao</a></li>
								<li class="active"><a href="1timmc.jsp">Tìm Minh Chứng</a></li>
															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
		</div>
	

	<h1>Nhập Mục Minh Chứng</h1>

		
	<center>
	<!-- ten minh chung -->
	<form class="form-horizontal" role="form" action="1_update.jsp">
  <div class="form-group">
    <label for="Tên Minh Chứng" class="col-sm-4 control-label">Tên Minh Chứng:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Tên Minh Chứng" placeholder="Tên Minh Chứng" value="${param.a}">
    </div><!-- ten minh chung -->
    <!-- mo ta -->
  </div>
  <div class="form-group">
    <label for="Mô Tả" class="col-sm-4 control-label">Mô Tả:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Mô Tả" placeholder="Mô Tả">
    </div> 
   </div> <!-- mo ta -->
   <!-- file minh chung -->
  <div class="form-group">
   	<label for="File" class="col-sm-4 control-label">File Minh Chứng:</label>
   	<div class="col-sm-2">
   		<input type="file" id="exampleInputFile">
   	</div>
   	
      
    </div><!-- /input-group -->
   <!-- file minh chung -->
  <!-- nguoi nhap -->
  <div class="form-group">
    <label for="Người Nhập" class="col-sm-4 control-label">Người Nhập:</label>
    <div class="col-sm-4">
      <input type="text" class="form-control" id="Người Nhập" placeholder="Người Nhập"value="${param.b}">
    </div>
   </div><!-- nguoi nhap -->
   </form>
   
  <div class="col-sm-8 control-label">
      <a href="1nhapthanhcong.jsp" ><input type="submit" value="Xong" class="btn btn-default"></a>
    </div>
    <font color="red" size="5"><c:if test="${not empty param.errMsg}">
           		 <c:out value="${param.errMsg}" />
			    </c:if>
			    </font>
</center>


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
</body>