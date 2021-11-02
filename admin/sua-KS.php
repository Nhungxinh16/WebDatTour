<!-- trang này dùng để sửa khách sạn -->

<?php
    require_once("../config/constants.php");
    require_once("check-admin.php");
    if(isset($_POST["submit"])){
        $hotel_name = $_POST["hotel_name"];
        $address = $_POST["address"];
        $rating = $_POST["rating"];
        $sql = "update hotels set hotel_name = ?, address = ?, rating = ? where hotel_id = ?";
        $result = simpleQuery($sql, 0, [$hotel_name, $address, $rating, $_GET["id"]]);
        if($result){
            header("location: QLKS.php");
        }
    }
    $row = null;
    if(isset($_GET["id"]) && $_GET["id"] != null){
        $sql = "select * from hotels where hotel_id = ?";
        $row = simpleQuery($sql, 1, [$_GET["id"]])[0];
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa khách sạn</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Thêm -->
        <div class="container col-md-12 mx-auto">
            <form action="sua-KS.php?id=<?php echo $row["hotel_id"]; ?>" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên khách sạn</span>
                        <input type="text" class="form-control" name= "hotel_name" placeholder="Nhập tên khách sạn" required value="<?php echo $row["hotel_name"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Địa chỉ khách sạn</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ khách sạn" required value="<?php echo $row["address"]; ?>">
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Đánh giá</span>
                        <input type="number" min="1" max="5" class="form-control" name= "rating" placeholder="Nhập số sao" required value="<?php echo $row["rating"]; ?>">
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