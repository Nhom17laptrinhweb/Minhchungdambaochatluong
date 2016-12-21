<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Tạo Minh Chứng</title>
	<!-- bootstraps CSS & JS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="resource/js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	 <link rel="stylesheet" href="dist/themes/default/style.min.css" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
  <script src="dist/jstree.min.js"></script>
  <script src="dist/libs/jquery.js"></script>
  <script>
  $(function () {
    // 6 create an instance when the DOM is ready
    $('#jstree').jstree();
    // 7 bind to events triggered on the tree
    $('#jstree').on("changed.jstree", function (e, data) {
      console.log(data.selected);
    });
    // 8 interact with the tree - either way is OK
    $('button').on('click', function () {
      $('#jstree').jstree(true).select_node('child_node_1');
      $('#jstree').jstree('select_node', 'child_node_1');
      $.jstree.reference('#jstree').select_node('child_node_1');
    });
  });
  </script>
	<script>
$(document).ready(function(){
    $("button").click(function(){
        $.ajax({url: "1.txt", success: function(result){
            $("#div1").jsp(result);
        }});
    });
});
</script>
	<!-- Customize -->
	<link rel="stylesheet" href="resource/css/style.css">
	
</head>
</head>
<body>
	<div id="wrapper">
		<div id="head">
				<img class="logo" src="img/skpt.jpg" alt="logo">
				<div class="dangnhap">
					<h4> <span class="glyphicon glyphicon-user"></span> Chào Sơn</h4>
					<a href="TrangChu_Admin.jsp"><input class="btn btn-info" type="button" name="dangxuat" value="Đăng xuất"> <br>
					
				</div>

		</div> <!-- ket thuc head -->
    </div>
<br>
<div class="container">
    <div id="container" >
    	<div id="main-content">
    		<div id="menu">
				<nav class="navbar navbar-default" role="navigation">
					<div class="container-fluid">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							
							<a class="navbar-brand" href="2taomc.jsp">Tạo Mục Minh Chứng</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="2xem.jsp">Xem Mục Minh Chứng</a></li>
								<li class="active"><a href="2suamc.jsp">Sửa Mục Minh Chứng</a></li>
								<li class="active"><a href="2timmc.jsp">Tìm Mục Minh Chứng</a></li>

															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
			<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost:3306/nhom17dbcl"
     user="root"  password="dosanhdai1"/>
 
<sql:query dataSource="${snapshot}" var="result">
SELECT * from mucminhchung;
</sql:query>
<div class="row">
 	<div class="col-md-4 ">
 		 <!-- cay -->
		<div id="jstree">
			
	    <!-- in this example the tree is populated from inline HTML -->
	    <ul>
	    
	    
			    <c:forEach var="row" items="${result.rows}">
			    <c:choose>
			    <c:when test ="${row.tinhtrang==0 }">
			    <li class='chudo'><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="2chitietthuvien.jsp">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="2chitietthuvien.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="2chitietthuvien.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="2chitietthuvien.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:when>
			      <c:otherwise>
			      <li><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="2chitietcantin.jsp">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="2chitietcantin.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="2chitietcantin.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="2chitietcantin.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:otherwise>
			      </c:choose>
			    </c:forEach>
		 
		
		</ul>
      	</div>
  	</div>
 

 
		<!-- ket thuc cay -->




 	<div class="col-md-8">		 
		

		<h1>Tạo Mục Minh Chứng</h1>
	
				<div>
				<form class="form-horizontal" id ="contactform" role="form" method="post" action=2NewFile.jsp>
				  <div class="form-group">
				    <label for="inputEmail3" class="col-sm-3 control-label">Tên Mục minh chứng</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputmmc" placeholder="Mục minh chứng" name="mmc">
				      
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Mô Tả</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputndg" placeholder="Mô Tả"name="mt">
				    </div>
				  </div>
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">File Minh Chứng</label>
				    <div class="col-sm-2">
   						<input type="file" id="exampleInputFile">
   					</div>
				  </div>
				   <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Người Nhập</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputndg" placeholder="Người Nhập"name="nn">
				    </div>
				  </div>
				  
				 
				  <div class="form-group">
				    <label for="inputPassword3" class="col-sm-3 control-label">Người Tạo</label>
				    <div class="col-sm-6">
				      <input type="text" class="form-control" id="inputndg" placeholder="Người Tạo"name="nt">
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
				      <div class="checkbox">
				        <label>
				         
				        </label>
				      </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-offset-2 col-sm-10">
					
				    
				     <input href="" data-remote="false" id="btntmc1" class="btn btn-info" type="submit" name="tmc" value="Xong" data-toggle="modal" data-target="#myModal">
					
				    </div>
				  </div>
				</form>
				</div>
				</div>
			
		
		</div>
</div>

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