<!-- trang này để quản lý thành phố -->

<?php
/*     require("config/constants.php"); */
    require('templates-admin/header.php');
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
                                    <th scope="col">Ảnh</th>
                                    <th scope="col">Sửa</th>
                                    <th scope="col">Xóa</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Hà Nội</td>
                                    <td>Hà Nội là 1 thành phố ....</td>
                                    <td>ảnh 1</td>
                                    <td><a href="#"><i class="fas fa-edit"></i></a></td>
                                    <td><a href="#"><i class="fas fa-trash-alt"></i></a></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <button type="button" class="btn btn-primary" style="margin-bottom: 12px"><a href="them-TP.php" class="text-white">Thêm</a></button>


<?php
    include('templates-admin/footer.php')
?>