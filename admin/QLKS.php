<!-- trang này là khi bấm vào quản lý khách sạn trên nav bar sẽ ra 
nó dùng để quản lý các khách sạn -->


<?php
/*     require("config/constants.php"); */
    require('templates-admin/header.php');
?>

            <div class="container-fluid px-4">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Quản lý khách sạn</h3>
                    <div class="col">
                        <table class="table bg-white rounded shadow-sm  table-hover">
                            <thead>
                                <tr>
                                    <th scope="col" width="50">#</th>
                                    <th scope="col">Tên khách sạn</th>
                                    <th scope="col">Địa chỉ</th>
                                    <th scope="col">Đánh giá</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>khách sạn 1</td>
                                    <td>Hà Nội</td>
                                    <td>3 sao</td>
                                    <td><a href="#">Sửa</a></td>
                                    <td><a href="#">xóa</a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-KS.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>