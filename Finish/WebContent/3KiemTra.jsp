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
	<title>Trang chủ Admin</title>
	<!-- bootstraps CSS & JS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script src="resource/js/jquery-3.1.0.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="resource/js/owl.carousel.js"></script>
	<link rel="stylesheet" href="resource/css/owl.carousel.css">
	<script src="resource/js/imagelightbox.js"></script>
	<link rel="stylesheet" href="resource/css/lightbox.css">
	<script src="resource/js/headlinenew.js"></script>
	<!-- Customize -->
	<link rel="stylesheet" href="resource/css/style.css">
	<script src="resource/js/customize.js"></script>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="dist/themes/default/style.min.css" />
	
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
				<title>jquery tree menu css slide up down</title>
				<script src='https://ajax.googleapis.com/ajax/libs/jquery/2.0.0/jquery.min.js'></script>
				<script type="text/javascript">
				$(function(){
 				$('#tree-menu > li > a').click(function(){
 				 var next = $(this).next();
  				if(next.is(':visible')){
   					next.slideUp(300);
  					 $(this).find('span').jsp('+');
						  }else{
 						  next.slideDown(300);
  					 $(this).find('span').jsp('-');
 					 }
 					});
					});
					</script>

					<style type="text/css">
					body { font:12px Tahoma, Geneva, sans-serif; }
				#div-head-tree-menu { width:230px; padding:10px 10px 10px 10px; text-align:center; background-color:#ddd; border:1px solid #ccc; border-bottom:5px solid #a8bfd7; }
				#div-tree-menu { padding-left:20px; padding-bottom:10px; width:230px; background-color:#eee; overflow:hidden; border:1px solid #aaa; border-top:1px solid #FFF;   }

				#tree-menu {  width:200px; float:left; margin:0; padding:0; margin-top:-1px;}
				#tree-menu ul { margin:0; padding:8px;  }
				#tree-menu li { list-style:none;  padding:8px; margin:0; }

				#menu-lv1 { display:none; }
				#menu-lv2 { display:none; }
				#menu-lv3 { display:none; }
				#menu-lv4 { display:none; }

				a:link { text-decoration: none; color: #00F; }
				a:visited { text-decoration: none; color: #0CF; }
				a:hover { text-decoration: none; color: #F60; }
				a:active { text-decoration: none; color: #F00; }
				.txt-red { color:#F00 }
				</style>
				
				<script src="dist/libs/jquery.js"></script>
  <!-- 5 include the minified jstree source -->
  <script src="dist/jstree.min.js"></script>
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
</head>
<div class="container">
<body>
	<div id="wrapper">
		<div id="head">
				<img class="logo" src="img/skpt.jpg" alt="logo">
				<div class="dangnhap">

					<h4><span class="glyphicon glyphicon-user"></span> 
					<font color="red">
           			 <c:out value="${param.Msg}" />
			   		 
			    </font>
					</h4>
					<a href="TrangChu_Admin.jsp"><input class="btn btn-info" type="button" name="dangxuat" value="Đăng xuất"> </a>
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
							
							<a class="navbar-brand" href="3KiemTra.jsp">Kiểm Tra</a>
						</div>
				
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse navbar-ex1-collapse">
							<ul class="nav navbar-nav">
								<li class="active"><a href="3Trangchu_Minh.jsp">Mục minh chứng</a></li>
								<li class="active"><a href="3timmc.jsp">Tìm kiếm</a></li>

															
							</ul>											
						</div><!-- /.navbar-collapse -->
					</div>
				</nav>
			</div> <!-- ket thuc menu -->	
		</div>
		</div>
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
			    <li class='chuxanh'><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'><a href="1doantruong.jsp">Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="1doantruong.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:when>
			      <c:otherwise>
			      <li><a href="4chitiet.jsp?a=${row.tenmc } &b=${row.nguoinhap} &c=${row.mota} &d=${row.nguoitao} &e=${row.linkfile} &f=${row.mamc}"><c:out value="${row.tenmc}"/></td>
			        <ul>
			        <li data-jstree='{"icon":"glyphicon glyphicon-leaf"}'>Người nhập:
			      <c:out value="${row.nguoinhap}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Mô tả: <c:out value="${row.mota}"/></td></a></li>
			          <li><a href="1doantruong.jsp">Người tạo: <c:out value="${row.nguoitao}"/></td></a></li>
			          <li><a href="1doantruong.jsp">File: <c:out value="${row.linkfile}"/></td></a></li>
			        </ul>
			      </li>
			      </c:otherwise>
			      </c:choose>
			    </c:forEach>
		 
		
		</ul>
      
  	</div>
  </div>

	<div id="footer">
			<p>
				Ban kiểm định
				<br>
				<strong>Trường ĐH Sư phạm Kỹ thuật TP. Hồ Chí Minh</strong><br>
				&nbsp;Số 01, Võ Văn Ngân, phường Linh Chiểu, quận Thủ Đức<br>
				&nbsp;Email:
				<br>
				+ MCDBCL@hcmute.edu.vn
				<br>

			</p>
</div>
</body>