<!-- Trang này dùng để quản lý loại tour -->

<?php
    require("../config/constants.php");
    $_SESSION["nav"] = "tourtypes";
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

            <div class="container-fluid px-4" style="margin-bottom: 20%;">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý loại tour</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Tên loại tour</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $sql = "select * from tourtypes";
                                    $rows = simpleQuery($sql);
                                    $i = 1;
                                    foreach($rows as $row){
                                        echo '
                                            <tr>
                                                <th scope="row">'.$i.'</th>
                                                <td>'.$row["type_name"].'</td>
                                                <td><a href="#"><i class="fas fa-edit"></i></a></td>
                                                <td><a href="xoa.php?tourtypes=&id='.$row["tour_type_id"].'"><i class="fas fa-trash-alt"></i></a></td>
                                            </tr>
                                        ';
                                        $i++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-LoaiTour.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>