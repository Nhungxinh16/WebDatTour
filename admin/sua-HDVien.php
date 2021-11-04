<!-- trang này dùng để sửa hướng dẫn viên -->

<?php
    require_once("../config/constants.php");
    require_once("check-admin.php");
    if(isset($_POST["submit"])){
        $name = $_POST["name"];
        $gender = $_POST["gender"];
        $phone_number = $_POST["phone_number"];
        $email = $_POST["email"];
        $avatar = $_POST["avatar"];
        $sql = "update tourguides set name = ?, gender = ?, phone_number = ?, email = ? where tour_guide_id = ?";
        $result = simpleQuery($sql, 0, [$name, $gender, $phone_number, $email, $_GET["id"]]);
        if($result){
            header("location: QLHDVien.php");
        }
    }
    $row = null;
    if(isset($_GET["id"]) && $_GET["id"] != null){
        $sql = "select * from tourguides where tour_guide_id = ?";
        $row = simpleQuery($sql, 1, [$_GET["id"]])[0];
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa hướng dẫn viên</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="sua-HDVien.php?id=<?php echo $row["tour_guide_id"]; ?>" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên hướng dẫn viên</span>
                        <input type="text" class="form-control" name= "name" placeholder="Nhập tên hướng dẫn viên" required value="<?php echo $row["name"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Giới tính</span>
                        <select class="form-select form-select-sm" name="gender">
                            <option value="0" <?php if($row["gender"] == 0) echo "selected"; ?>>Nữ</option>
                            <option value="1"  <?php if($row["gender"] == 1) echo "selected"; ?>>Nam</option>
                        </select>
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Số điện thoại</span>
                        <input type="tel" class="form-control" name= "phone_number" placeholder="Nhập số điện thoại" required value="<?php echo $row["phone_number"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Email</span>
                        <input type="text" class="form-control" name= "email" placeholder="Nhập email" required value="<?php echo $row["email"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Avatar</span>
                        <input type="text" class="form-control" name= "avatar" placeholder="Nhập link avatar" value="<?php echo $row["avatar"]; ?>">
                    </div>
                    <button type="submit" class="btn btn-info" name="submit">Sửa</button>
     
                </div>
            </form>
                      
        </div>        
    </div>
</div>
<?php
    include('templates-admin/footer.php');
?>