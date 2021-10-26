<!-- trang này là khi bấm vào quản lý đặt tour trên nav bar sẽ ra 
nó dùng để quản lý đặt tour -->


<?php
/*     require("config/constants.php"); */
    require('templates-admin/header.php');
?>

            <div class="container-fluid px-4">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý đơn đặt tour</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Người đặt tour</th>
                                    <th scope="col">Tên tour</th>
                                    <th scope="col">Thời gian bắt đầu</th>
                                    <th scope="col">Số người</th>
                                    <th scope="col">Số ngày</th>
                                    <th scope="col">Xem chi tiết</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
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