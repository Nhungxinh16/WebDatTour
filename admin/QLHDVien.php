<?php
    require("../config/constants.php");
    require_once("check-admin.php");
    $_SESSION["nav"] = "tourguides";
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
                    <h3 class="fs-4 mb-3">Quản lý hướng dẫn viên</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Tên</th>
                                    <th scope="col">Giới tính</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Số điện thoại</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $sql = "select * from tourguides";
                                    $rows = simpleQuery($sql);
                                    $i = 1;
                                    foreach($rows as $row){
                                        echo '
                                            <tr>
                                                <th scope="row">'.$i.'</th>
                                                <td>'.$row["name"].'</td>
                                                <td>';
                                                    if($row["gender"] == 0){
                                                        echo "Nữ";
                                                    }else{
                                                        echo "Nam";
                                                    }
                                                echo '</td>
                                                <td>'.$row["email"].'</td>
                                                <td>'.$row["phone_number"].'</td>
                                                <td><a href="sua-HDVien.php?id='.$row["tour_guide_id"].'"><i class="fas fa-edit"></i></a></td>
                                                <td><a href="xoa.php?tourguides=&id='.$row["tour_guide_id"].'"><i class="fas fa-trash-alt"></i></a></td>
                                            </tr>
                                        ';
                                        $i++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-HDVien.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>