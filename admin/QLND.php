<!-- trang này là khi bấm vào quản lý người dùng trên nav bar sẽ ra 
nó dùng để quản lý người dùng -->


<?php
    require("../config/constants.php");
    $_SESSION["nav"] = "customers";
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
                    <h3 class="fs-4 mb-3">Quản lý người dùng</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Điện thoại</th>
                                    <th scope="col">Giới tính</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php 
                                    $i = 1;
                                    $sql = "select * from customers";
                                    $rows = simpleQuery($sql);
                                    foreach($rows as $row){
                                        echo '
                                            <tr>
                                                <th scope="row">'.$i.'</th>
                                                <td>'.$row["user_name"].'</td>
                                                <td>'.$row["email"].'</td>
                                                <td>'.$row["phone_number"].'</td>
                                                <td>';
                                                    if($row["gender"] == 0){
                                                        echo "Nữ";
                                                    }else{
                                                        echo "Nam";
                                                    }
                                                echo '</td>
                                                <td><a href="#"><i class="fas fa-edit"></i></a></td>
                                                <td><a href="xoa.php?customers=&id='.$row["customer_id"].'"><i class="fas fa-trash"></i></a></td>
                                            </tr>
                                        ';
                                        $i++;
                                    }
                                ?>
                                
                            </tbody>
                        </table>
                    </div>
                </div>

<?php
    include('templates-admin/footer.php')
?>