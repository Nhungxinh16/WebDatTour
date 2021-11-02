<!-- trang này dùng để thêm hướng dẫn viên -->

<?php
    require_once("../config/constants.php");
    require_once("check-admin.php");
    if(isset($_POST["submit"])){
        $name = $_POST["name"];
        $gender = $_POST["gender"];
        $phone_number = $_POST["phone_number"];
        $email = $_POST["email"];
        $avatar = $_POST["avatar"];
        $sql = "insert into tourguides set name = ?, gender = ?, phone_number = ?, email = ?";
        $result = simpleQuery($sql, 0, [$name, $gender, $phone_number, $email]);
        if($result){
            header("location: QLHDVien.php");
        }
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm hướng dẫn viên</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Thêm -->
        <div class="container col-md-12 mx-auto">
            <form action="them-HDVien.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên hướng dẫn viên</span>
                        <input type="text" class="form-control" name= "name" placeholder="Nhập tên hướng dẫn viên" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Giới tính</span>
                        <select class="form-select form-select-sm" name="gender">
                            <option value="0" selected>Nữ</option>
                            <option value="1">Nam</option>
                        </select>
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Số điện thoại</span>
                        <input type="tel" class="form-control" name= "phone_number" placeholder="Nhập số điện thoại" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Email</span>
                        <input type="text" class="form-control" name= "email" placeholder="Nhập email" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Avatar</span>
                        <input type="text" class="form-control" name= "avatar" placeholder="Nhập link avatar" required>
                    </div>
                    <button type="submit" class="btn btn-info" name="submit">Thêm</button>
     
                </div>
            </form>
                      
        </div>        
    </div>
</div>
<?php
    include('templates-admin/footer.php');
?>