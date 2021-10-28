<!-- trang này dùng để thêm nhà hàng -->

<?php
include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm nhà hàng</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- thêm -->
        <div class="container col-md-12 mx-auto">
            <form action="QLNH.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Tên nhà hàng</span>
                        <input type="text" class="form-control" name= "res_name" placeholder="Nhập tên nhà hàng" required>
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Địa chỉ nhà hàng</span>
                        <input type="text" class="form-control" name= "address" placeholder="Nhập địa chỉ nhà hàng" required>
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Đánh giá</span>
                        <input type="text" class="form-control" name= "rating" placeholder="Nhập số sao" required>
                    </div>
                    <button type="submit" class="btn btn-info" name="submit">Thêm</button>
     
                </div>
            </form>
                      
        </div>        
    </div>
</div>
<?php
    include('templates-admin/footer.php');
?>