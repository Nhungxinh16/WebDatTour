<!-- trang này dùng để thêm cấp tour -->

<?php
    require_once("../config/constants.php");
    require_once("check-admin.php");
    if(isset($_POST["submit"])){
        $rank_name = $_POST["rank_name"];
        $description = $_POST["description"];
        $sql = "insert into ranks set rank_name = ?, description = ?";
        $result = simpleQuery($sql, 0, [$rank_name, $description]);
        if($result){
            header("location: QLCapTour.php");
        }
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm cấp tour</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Thêm -->
        <div class="container col-md-12 mx-auto">
            <form action="them-CapTour.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên cấp tour</span>
                        <input type="text" class="form-control" name= "rank_name" placeholder="Nhập tên cấp tour" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Mô tả</span>
                        <input type="text" class="form-control" name= "description" placeholder="Nhập mô tả " required>
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