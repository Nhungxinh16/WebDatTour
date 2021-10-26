<!-- trang này là khi bấm vào quản lý người dùng trên nav bar sẽ ra 
nó dùng để quản lý người dùng -->


<?php
/*     require("config/constants.php"); */
    require('templates-admin/header.php');
?>

            <div class="container-fluid px-4">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý người dùng</h3>
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
                                    <td><a href="#">Sửa</a></td>
                                    <td><a href="#">xóa</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

<?php
    include('templates-admin/footer.php')
?>