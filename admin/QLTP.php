<!-- trang này để quản lý thành phố -->

<?php
    require("../config/constants.php");
    $_SESSION["nav"] = "cities";
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
                    <h3 class="fs-4 mb-3">Quản lý thành phố</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Tên thành phố </th>
                                    <th scope="col">Miêu tả</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $i = 1;
                                    $sql = "select * from cities";
                                    $rows = simpleQuery($sql);
                                    foreach($rows as $row){
                                        echo '
                                            <tr>
                                                <th scope="row">'.$i.'</th>
                                                <td>'.$row["city_name"].'</td>
                                                <td>'.$row["description"].'</td>
                                                <td><a href="#"><i class="fas fa-edit"></i></a></td>
                                                <td><a href="xoa.php?cities=&id='.$row["city_id"].'"><i class="fas fa-trash"></i></a></td>
                                            </tr>
                                        ';
                                        $i++;
                                    }
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-TP.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>