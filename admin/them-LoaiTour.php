<!-- trang này dùng để thêm loại tour -->

<?php
    require_once("../config/constants.php");
    if(isset($_POST["submit"])){
        $type_name = $_POST["type_name"];
        $image = $_POST["image"];
        $sql = "insert into tourtypes set type_name = ?, image = ?";
        $result = simpleQuery($sql, 0, [$type_name, $image]);
        if($result){
            header("location: QLLoaiTour.php");
        }
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm loại tour</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Thêm -->
        <div class="container col-md-12 mx-auto">
            <form action="them-LoaiTour.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên loại tour</span>
                        <input type="text" class="form-control" name= "type_name" placeholder="Nhập tên loại tour" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Ảnh</span>
                        <input type="text" class="form-control" name= "image" placeholder="Nhập link ảnh " required>
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