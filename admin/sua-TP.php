<!-- trang này dùng để thêm thành phố -->

<?php
    require_once("../config/constants.php");
    require_once("check-admin.php");
    if(isset($_POST["submit"])){
        $city_name = $_POST["city_name"];
        $description = $_POST["description"];
        $image = $_POST["image"];
        $sql = "update cities set city_name = ?, description = ?, image = ? where city_id = ?";
        $result = simpleQuery($sql, 0, [$city_name, $description, $image, $_GET["id"]]);
        if($result){
            header("location: QLTP.php");
        }
    }
    $row = null;
    if(isset($_GET["id"]) && $_GET["id"] != null){
        $sql = "select * from cities where city_id = ?";
        $row = simpleQuery($sql, 1, [$_GET["id"]])[0];
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa thành phố</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="sua-TP.php?id=<?php echo $row["city_id"]; ?>" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên thành phố</span>
                        <input type="text" class="form-control" name= "city_name" placeholder="Nhập tên thành phố" required value="<?php echo $row["city_name"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Mô tả</span>
                        <input type="text" class="form-control" name= "description" placeholder="Nhập mô tả thành phố" required value="<?php echo $row["description"]; ?>">
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Ảnh</span>
                        <input type="text" class="form-control" name= "image" placeholder="Nhập link ảnh" required value="<?php echo $row["image"]; ?>"> 
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