<?php
ob_start();;
include('templates/header-login.php');
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
            <?php

            if (isset($_SESSION['login'])) {
              echo $_SESSION['login'];
              unset($_SESSION['login']);
            }
            if (isset($_SESSION['reg_success'])) {
              echo $_SESSION['reg_success'];
              unset($_SESSION['reg_success']);
            }

            ?>
            <form action="" method="POST">
              <div class="form-group first">
                <input type="text" class="form-control" name="username" id="username" placeholder="Tài khoản">

              </div>
              <div class="form-group last mb-3">
                <input type="password" class="form-control" name="password" id="password" placeholder="mật khẩu">

              </div>

              <div class="d-flex mb-5 align-items-center">
                <label class="control control--checkbox mb-0"><span class="caption">Ghi Nhớ Đăng Nhập</span>
                  <input type="checkbox" checked="checked" />
                  <div class="control__indicator"></div>
                </label>
                <span class="ml-auto"><a href="#" class="forgot-pass">Quên Mật Khẩu?</a></span>
              </div>
              <div class='d-flex flex-row'>
                <button type="submit" name="login" value="Đăng Nhập" class="btn btn-block btn-primary">Đăng Nhập</button>
                <div class="btn btn-block btn-primary mt-0 ms-2 d-flex justify-content-center align-items-center" style='background-color: #1da1f2; border-color: #1da1f2;'>
                  <a href="register.php" style="color:#fff;text-decoration:none;">Đăng ký</a>
                </div>
              </div>

              <span class="d-block text-center my-4 text-muted">&mdash; or &mdash;</span>

              <div class="social-login">
                <a href="#" class="facebook btn d-flex justify-content-center align-items-center">
                  <span class="icon-facebook mr-3"></span> Đăng Nhập với Facebook
                </a>
                <a href="#" class="twitter btn d-flex justify-content-center align-items-center">
                  <span class="icon-twitter mr-3"></span> Đăng Nhập với Twitter
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
<?php
if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];
  $sql = "select * from customers where user_name ='$username'";
  $result_1 = mysqli_query($conn, $sql);

  if (mysqli_num_rows($result_1) > 0) {
    $row = mysqli_fetch_assoc($result_1);

    if (!password_verify($password, $row['password'])) {
      $_SESSION['login'] = "<div class='text-success'>Đăng nhập thành công.</div>";
      $_SESSION['user'] = $username;
      header('location: index.php');
    } else {

      $_SESSION['login'] = "<div class='text-danger'>Sai mật khẩu</div>";
      header("Location:login.php");
    }
  } else {
    $_SESSION['login'] = "<div class='text-danger'>Sai tài khoản</div>";
    header("Location:login.php");
  }
}
ob_end_flush();
?>