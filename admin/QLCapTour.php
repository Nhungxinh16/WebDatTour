<!-- Trang này dùng để quản lý cấp tour -->

<?php
    require("../config/constants.php");
    require_once("check-admin.php");
    $_SESSION["nav"] = "ranks";
    require('templates-admin/header.php');
    if(isset($_SESSION["alert"])){
        $message = $_SESSION["alert"];
        unset($_SESSION["alert"]);
        echo '<script>
                alert("'.$message.'");
            </script>
        ';
    }
?>

            <div class="container-fluid px-4">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý cấp tour</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Tên cấp</th>
                                    <th scope="col">Mô tả</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $sql = "select * from ranks";
                                    $rows = simpleQuery($sql);
                                    $i = 1;
                                    foreach($rows as $row){
                                        echo '
                                            <tr>
                                                <th scope="row">'.$i.'</th>
                                                <td>'.$row["rank_name"].'</td>
                                                <td>'.$row["description"].'</td>
                                                <td><a href="sua-CapTour.php?id='.$row["rank_id"].'"><i class="fas fa-edit"></i></a></td>
                                                <td><a href="xoa.php?ranks=&id='.$row["rank_id"].'"><i class="fas fa-trash-alt"></i></a></td>
                                            </tr>
                                        ';
                                        $i++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-CapTour.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>