<!-- trang này dùng để sửa cấp tour -->

<?php
    require_once("../config/constants.php");
    require_once("check-admin.php");
    if(isset($_POST["submit"])){
        $rank_name = $_POST["rank_name"];
        $description = $_POST["description"];
        $sql = "update ranks set rank_name = ?, description = ? where rank_id = ?";
        $result = simpleQuery($sql, 0, [$rank_name, $description, $_GET["id"]]);
        if($result){
            header("location: QLCapTour.php");
        }
    }
    $row = null;
    if(isset($_GET["id"]) && $_GET["id"] != null){
        $sql = "select * from ranks where rank_id = ?";
        $row = simpleQuery($sql, 1, [$_GET["id"]])[0];
    }
    include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa cấp tour</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- Sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="sua-CapTour.php?id=<?php echo $row["rank_id"]; ?>" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên cấp tour</span>
                        <input type="text" class="form-control" name= "rank_name" placeholder="Nhập tên cấp tour" required value="<?php echo $row["rank_name"]; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Mô tả</span>
                        <input type="text" class="form-control" name= "description" placeholder="Nhập mô tả " required value="<?php echo $row["description"]; ?>">
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