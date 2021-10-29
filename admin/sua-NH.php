<!-- trang này dùng để sửa nhà hàng -->

<?php
    require_once("../config/constants.php");
    if(isset($_POST["submit"])){
        $res_name = $_POST["res_name"];
        $address = $_POST["address"];
        $rating = $_POST["rating"];
        $sql = "update restaurants set res_name = ?, address = ?, rating = ? where res_id = ?";
        $result = simpleQuery($sql, 0, [$res_name, $address, $rating, $_GET["id"]]);
        if($result){
            header("location: QLNH.php");
        }
    }
    $row = null;
    if(isset($_GET["id"]) && $_GET["id"] != null){
        $sql = "select * from restaurants where res_id = ?";
        $row = simpleQuery($sql, 1, [$_GET["id"]])[0];
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa nhà hàng</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="sua-NH.php?id=<?php echo $row["res_id"]; ?>" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên nhà hàng</span>
                        <input type="text" class="form-control" name= "res_name" placeholder="Nhập tên nhà hàng" required value="<?php echo $row["res_name"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Địa chỉ nhà hàng</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ nhà hàng" required value="<?php echo $row["address"]; ?>">
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Đánh giá</span>
                        <input type="number" min = "1" max = "5" class="form-control" name= "rating" placeholder="Nhập số sao" required value="<?php echo $row["rating"]; ?>">
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