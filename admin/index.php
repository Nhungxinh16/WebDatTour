<!-- trang này là trang mà ban đầu admin đăng nhập vào sẽ thấy
nó đang ở chỗ quản lý tour 
-->

<?php
/*     require("config/constants.php"); */
    require('templates-admin/header.php');
?>

            <div class="container-fluid px-4">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý tour</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">User-name</th>
                                    <th scope="col">Password</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Birthday</th>
                                    <th scope="col">Điện thoại</th>
                                    <th scope="col">Họ tên</th>
                                    <th scope="col">Giới tính</th>
                                    <th scope="col">Customer</th>
                                    <th scope="col">Price</th>                                    
                                    <th scope="col">Customer</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Price</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Television</td>
                                    <td>Jonny</td>
                                    <td>$1200</td>
                                    <td>Television</td>
                                    <td>Jonny</td>
                                    <td>$1200</td>
                                    <td>Television</td>
                                    <td>Jonny</td>
                                    <td>$1200</td>
                                    <td><a href="#">Xem chi tiết</a></td>
                                    <td><a href="sua-tour.php">Sửa</a></td>
                                    <td><a href="#">xóa</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-tour.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>