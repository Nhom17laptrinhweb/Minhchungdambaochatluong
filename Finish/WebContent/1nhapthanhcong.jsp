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
              <a class="navbar-brand" href="1nhapminhchung.jsp">Tạo Minh Chứng</a>
            </div>
        
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
              <ul class="nav navbar-nav">
                
                <li class="active"><a href="1xemmc.jsp">Xem Minh Chứng</a></li>
                <li class="active"><a href="1timmc.jsp">Tìm Minh Chứng</a></li>
                              
              </ul>                     
            </div><!-- /.navbar-collapse -->
          </div>
        </nav>
      </div> <!-- ket thuc menu --> 
    </div>
    </div>
  



    
<form class="form-horizontal" role="form">
  <div class="form-group">
    <label for="Thông Báo" class="col-sm-5 control-label"><span style="font-size: 40px">Thông Báo:</span></label>
    
   </div>
   <div>
     <label for="Tạo Minh Chứng" class="col-sm-8 control-label"><span style="font-size: 30px">Nhập Minh Chứng Thành Công.!!</span></label>
   </div>
    <br  width="200%" size="20px" align="center" />
    <br  width="200%" size="20px" align="center" />
    <br  width="200%" size="20px" align="center" />
    <br  width="200%" size="20px" align="center" />
    <div class="col-sm-6 control-label">
      
      <a href="1nhapminhchung.jsp" ><input type="button" value="Tiếp Tục Nhập" class="btn btn-primary"></a>
    </div>
  
  
</form>

  <div id="footer">
      <p>
        Ban kiểm định
        <br>
        <strong>Trường ĐH Sư phạm Kỹ thuật TP. Hồ Chí Minh</strong><br>
        &nbsp;Số 01, Võ Văn Ngân, phường Linh Chiểu, quận Thủ Đức<br>
        &nbsp;Email:  MCDBCL@hcmute.edu.vn
        

      </p>
</div>
</div>
</body>