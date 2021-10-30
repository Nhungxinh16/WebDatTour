<!-- trang này dùng để sửa thông tin người dùng -->

<?php
    require_once("../config/constants.php");
    if(isset($_POST["submit"])){
        $user_name = $_POST["user_name"]
        $password = $_POST["password"];
        $email = $_POST["email"];
        $birthday = $_POST["birthday"];
        $phone_number = $_POST["name"]
        $gender = $_POST["gender"];
        $sql = "update customers set user_name = ?, password = ?, email = ?, birthday = ?, phone_number = ?, name = ?, gender = ? where customer_id = ?";
        $result = simpleQuery($sql, 0, [$user_name, $password, $email, $birthday, $phone_number, $name, $gender, $_GET["id"]]);
        if($result){
            header("location: QLND.php");
        }
    }
    $row = null;
    if(isset($_GET["id"]) && $_GET["id"] != null){
        $sql = "select * from customers where customer_id = ?";
        $row = simpleQuery($sql, 1, [$_GET["id"]])[0];
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa người dùng</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="sua-ND.php?id=<?php echo $row["res_id"]; ?>" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên người dùng </span>
                        <input type="text" class="form-control" name= "res_name" placeholder="Nhập tên người dùng" required value="<?php echo $row["res_name"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Password</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ nhà hàng" required value="<?php echo $row["address"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Email</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ nhà hàng" required value="<?php echo $row["address"]; ?>">
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Birthday</span>
                        <input type="number" min = "1" max = "5" class="form-control" name= "rating" placeholder="Nhập số sao" required value="<?php echo $row["rating"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Số điện thoại</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ nhà hàng" required value="<?php echo $row["address"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Giới tính</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ nhà hàng" required value="<?php echo $row["address"]; ?>">
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