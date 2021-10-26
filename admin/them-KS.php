<!-- trang này dùng để thêm khách sạn -->

<?php
include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm khách sạn</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="process-add.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên khách sạn</span>
                        <input type="text" class="form-control" name= "txthoten" placeholder="Nhập tên khách sạn">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Địa chỉ khách sạn</span>
                        <input type="text" class="form-control" name= "txtchucvu" placeholder="Nhập địa chỉ khách sạn">
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Đánh giá</span>
                        <input type="text" class="form-control" name= "txtmayban" placeholder="Nhập số sao">
                    </div>
                    <button type="submit" class="btn btn-info" name="submit"> <a href="QLKS.php">Thêm</a> </button>
     
                </div>
            </form>
                      
        </div>        
    </div>
</div>
<?php
    include('templates-admin/footer.php');
?>