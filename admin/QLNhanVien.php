<?php
    require("../config/constants.php");
    require_once("check-admin.php");
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
            <div class="container-fluid px-4" style="margin-bottom: 20%;">
                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý khách hàng</h3>
      <form class="form-inline my-2 my-lg-0 mb-2" method="GET" action="listtour.php"style="position:relative;">
        <input class="form-control mr-1 sm-2 border-warning" type="text" name="search" placeholder="Bắt đầu tìm kiếm..." aria-label="Search">
        <button class="btn btn-outline my-2 my-sm-0 mr-1" type="submit" style="position: absolute; top: 0; right: 12px" ><i class="fas fa-search"></i></button>
      </form >
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm mt-3  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Username</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Điện thoại</th>
                                    <th scope="col">Giới tính</th>
                                    <th scope="col">Xem chi tiết</th>
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
                                                <td><a href="XemND.php?id='.$row["customer_id"].'"><i class="fas fa-eye"></i></a></td>
                                                <td><a href="sua-ND.php?id='.$row["customer_id"].'"><i class="fas fa-edit"></i></a></td>
                                                <td><a onclick="return confirmFuncc()" href="xoa.php?customers=&id='.$row["customer_id"].'"><i class="fas fa-trash"></i></a></td>
                                            </tr>
                                        ';
                                        $i++;
                                    }
                                ?>
                                
                            </tbody>
                        </table>
                    </div>
                </div>
          <div>
            <form action="export-import.php" method="POST" enctype="multipart/form-data">
                <button class="btn btn-dark" type="submit" name="export">Xuất file</button>
            </form>
        </div>
<?php
    include('templates-admin/footer.php')
?>
<html>
<script language="javascript" type="text/javascript">
  function confirmFuncc(){
    return confirm("Bạn có chắc chắn muốn xóa không?");
  }
</script>
</html>