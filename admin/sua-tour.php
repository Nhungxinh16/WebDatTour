<?php
include('templates-admin/header.php');
?>


<div class="main-content">
    <div class="wrapper">
        <div class="alert alert-success text-center" role="alert">
            <h2>Sửa</h2>
            <div class="text-center text-danger">
            </div>
        </div>

        <!-- sửa -->
        <div class="container">

            <form action="process-update.php" METHOD="GET">
                <div class="col-md-5 mx-auto">
                    <div class="input-group mb-2">
                        <span class="input-group-text col-4">Họ và tên</span>
                        <input type="text" class="form-control" name= "txthoten" placeholder="Username"
                            value="<?php echo $row['tennv']; ?>">
                    </div>

                    <div class="input-group mb-2">
                        <span class="input-group-text col-4" >Chức Vụ</span>
                        <input type="text" class="form-control" name= "txtchucvu" placeholder="Username"
                            value="<?php echo $row['chucvu']; ?>">
                    </div>
                    

                    <div class="input-group col"> 
                        <span class="input-group-text col-4" >Email</span>
                        <input type="email" class="form-control" name="txtemail" placeholder="Enter Email" 
                            value="<?php echo $row['email']; ?>">          
                    </div>

                    <div class="input-group mb-2"> 
                        <span class="input-group-text col-4" >Số điện thoại</span>
                        <input type="tel" class="form-control" name="sodidong" placeholder="Enter Telephone" 
                            value="<?php echo $row['sodidong']; ?>">              
                    </div>

                    <div class="input-group mb-2 ">
                        <label class="input-group-text col-4" for="inputGroupSelect01">Tên Đơn Vị</label>
                        <select class="form-select form-select-sm" name="sltMaDV" id="sltMaDV">
                        </select>
                    </div>
                    <button type="submit" class="btn btn-info" name="update">Sửa</button>
     
                </div>
            </form>
           
        </div>        
    </div>
</div>


<?php
    include('templates-admin/footer.php');
?>

