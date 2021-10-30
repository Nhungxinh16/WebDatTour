<!-- trang này dùng để thêm thành phố -->

<?php
    require_once("../config/constants.php");
    if(isset($_POST["submit"])){
        $city_name = $_POST["city_name"];
        $description = $_POST["description"];
        $image = $_POST["image"];
        $sql = "insert into cities set city_name = ?, description = ?, image = ?";
        $result = simpleQuery($sql, 0, [$city_name, $description, $image]);
        if($result){
            header("location: QLTP.php");
        }
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm thành phố</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Thêm -->
        <div class="container col-md-12 mx-auto">
            <form action="them-TP.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên thành phố</span>
                        <input type="text" class="form-control" name= "city_name" placeholder="Nhập tên thành phố" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Mô tả</span>
                        <input type="text" class="form-control" name= "description" placeholder="Nhập mô tả thành phố" required>
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Ảnh</span>
                        <input type="text" class="form-control" name= "image" placeholder="Nhập link ảnh" required>
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