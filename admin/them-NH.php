<!-- trang này dùng để thêm nhà hàng -->

<?php
include('templates-admin/header.php');
?>

<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Thêm</h2>
            <div class="text-center text-danger">
            </div>
        </div>
  <!-- sửa -->
        <div class="container col-md-12 mx-auto">
            <form action="process-add.php" METHOD="POST">
                <div class="col-md-6 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3">Họ và tên</span>
                        <input type="text" class="form-control" name= "txthoten" placeholder="Nhập họ và tên">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Chức Vụ</span>
                        <input type="text" class="form-control" name= "txtchucvu" placeholder="Nhập chức vụ">
                    </div>
                    
                    <div class="input-group mb-2">
                        <span class="input-group-text col-3" >Máy bàn</span>
                        <input type="text" class="form-control" name= "txtmayban" placeholder="Nhập số máy bàn">
                    </div>

                    <div class="input-group mb-2"> 
                        <span class="input-group-text col-3" >Email</span>
                        <input type="email" class="form-control" name="txtemail" placeholder="Nhập email" >      
                    </div>

                    <div class="input-group mb-2"> 
                        <span class="input-group-text col-3" >Số điện thoại</span>
                        <input type="tel" class="form-control" name="sodidong" placeholder="Nhập số điện thoại">             
                    </div>

                    <div class="input-group mb-2 ">
                        <label class="input-group-text col-3" for="inputGroupSelect01">Tên Đơn Vị</label>
                        <select class="form-select form-select-sm" name="sltMaDV" id="sltMaDV">
                        </select>
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