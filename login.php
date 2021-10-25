<?php
include('templates/header-login.php')
?>
 <body>
  

  <div class="d-lg-flex half justify-content-center mt-5 mb-5">
    <div class="bg order-1 order-md-2" style="background-image: url('images/bg_1.jpg');width: 35%;  background-position: center;background-repeat: no-repeat;background-size: cover;"></div>
    <div class="contents order-2 order-md-1">

      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-7">
            <div class="mb-4">
              <h3>Đăng Nhập</h3>
            </div>
            <form action="#" method="post">
              <div class="form-group first">
                <label for="username">Tài Khoản</label>
                <input type="text" class="form-control" id="username">

              </div>
              <div class="form-group last mb-3">
                <label for="password">Mật Khẩu</label>
                <input type="password" class="form-control" id="password">
                
              </div>
              
              <div class="d-flex mb-5 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Ghi Nhớ Đăng Nhập</span>
                  <input type="checkbox" checked="checked"/>
                  <div class="control__indicator"></div>
                </label>
                <span class="ml-auto"><a href="#" class="forgot-pass">Quên Mật Khẩu?</a></span> 
              </div>

              <input type="submit" value="Đăng Nhập" class="btn btn-block btn-primary">

              <span class="d-block text-center my-4 text-muted">&mdash; or &mdash;</span>
              
              <div class="social-login">
                <a href="#" class="facebook btn d-flex justify-content-center align-items-center">
                  <span class="icon-facebook mr-3"></span> Đăng Nhập với Facebook
                </a>
                <a href="#" class="twitter btn d-flex justify-content-center align-items-center">
                  <span class="icon-twitter mr-3"></span> Đăng Nhập với  Twitter
                </a>
                <a href="#" class="google btn d-flex justify-content-center align-items-center">
                  <span class="icon-google mr-3"></span> Đăng Nhập với Google
                </a>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>

    
  </div>
  </body>
<?php
include('templates/footer.php')
?>