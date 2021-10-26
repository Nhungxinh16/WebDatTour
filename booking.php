<?php
    require('templates/header.php');
    require("config/constants.php");
?>


    <div class="mr-auto ml-auto" style="max-width: 1300px">
    <div class="col-12 mt-2">
        <small class="text-muted"><a href="#" style="color: #282365;"><u>Du lịch</u></a><small><i class="fas fa-chevron-right ml-3 mr-3"></i></small><a href="#" style="color: #282365;"><u>Đặt tour trong nước</u></a></small>
    </div>
    <hr>

    <div class="col-12 mt-2">
        <span href="#" style="color:#4D4AEF; font-weight: 500;">1. Nhập thông tin</span><i class="fas fa-chevron-right ml-3 mr-3"></i><span href="#" style="color: #282365; font-weight: 500;">2. Thanh toán</span>
    </div>
    <hr>

    <div class="card mb-3" style="max-width: 1300px;"">
        <div class="row no-gutters">
          <div class="col-lg-3 col-12">
            <a href="#"><img src="content/image/dathang1.jpg" class="card-img" alt="..." style="border-radius: 10px 0 0 10px;"></a>
          </div>
          <div class="col-lg-9 col-12">
            <div class="card-body"  style="background-color: #F9F9F9;">
              <p class="card-text" style="font-weight: 500; font-size: large;">Rất tốt<small class="text-muted ml-2">358 nhận xét&#160;&#160;|&#160;&#160;Lượt đi <span class="text-nomute" style="font-weight: 500; color: #282365;">1,3k</span></small></p>
              <h5 class="card-title pr-2 mb-1" style="color: #282365; font-size:x-large;">Hành trình xanh Cần Giờ (Tàu cao tốc) - Khám phá KDL Sinh thái Dần Xây - Vàm Sát (Nhóm 6 khách)</h5>
              <p class="card-text mb-0"><small class="text-muted">Khởi hành <span class="ml-1" style="color: #282365; font-weight: 500;">28/10/2021</span></small></p>
              <p class="card-text mb-0"><small class="text-muted">Thời gian <span class="ml-1" style="color: #282365; font-weight: 500;">1 ngày</span></small></p>
              <p class="card-text mb-0"><small class="text-muted">Nơi khởi hành  <span class="ml-1" style="color: #282365; font-weight: 500;">TP. Hồ Chí Minh</span></small></p>
              <p class="card-text mb-0"><small class="text-muted">Số chỗ còn nhận<span class="ml-1" style="color: #282365; font-weight: 500;">6</span></small></p>
            </div>
          </div>
          </div>
        </div>
      </div>
      <!-- card thanh toán -->
      <div class="col d-flex justify-content-center">
        <div class="card" style="width: 30rem;">
            <div class="card-body justify-content-center">
              <h5 class="card-title" style="color: #282365;">Tóm tắt chuyến đi</h5>
              <p class="card-text mb-2"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal;">Tour chọn gói</span><span class="ml-1" style="color: #282365;">(6 khách)</span> </p>
              <img src="content/image/dathang1.jpg" alt="..." class="img-thumbnail mr-2" style="width:25%; border: none; border-radius: 10px; float: left;">
              <p class="card-text mr-4" style="color: #282365; font-weight: 500;">Hành trình xanh Cần Giờ (Tàu cao tốc) - Khám phá KDL Sinh thái Dần Xây - Vàm Sát (Nhóm 6 khách)</p>
              <p class="card-text mb-0"><span class="ml-1" style="color: #282365;">Bắt đầu chuyến đi</span> </p>
              <p class="card-text mb-4"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal;">T5, 28 Tháng 10, 2021</span></p>
              <p class="card-text mb-0"><span class="ml-1" style="color: #282365;">Kết thúc chuyến đi</span> </p>
              <p class="card-text mb-5"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal;">T5, 28 Tháng 10, 2021</span></p>
              <p class="card-text mb-4"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal; float: left;">Hành khách</span></p>
              <div class="form-group">
                <select class="form-control" style="width:20%; float:right;" id="exampleFormControlSelect1">
                  <option>1</option>
                  <option>2</option>
                  <option>3</option>
                  <option>4</option>
                  <option>5</option>
                  <option>6</option>
                </select>
              </div>
              <br>
              <br><br><br>
              <p class="card-text mb-0"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal; float: left;">Giá vé</span></p>
              <p class="card-text mb-4"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal; float: right;">6&#160;x&#160;2,990,000₫</span></p>

              <br><br><br><hr>
              <p class="card-text mb-0"><span class="ml-1" style="color: #282365; font-weight: 500; font-size: normal; float: left;">TỔNG CỘNG</span></p>
              <p class="card-text mb-4"><span class="ml-1" style="color: #FD5056; font-weight: 500; font-size: x-large; float: right;">17,940,000đ</span></p>
              <br><br><br>
              <button type="button" class="btn btn-danger col d-flex justify-content-center p-3" style="background-color: #FD5056; font-size:large; font-weight: 500; border-radius: 10px;">ĐẶT NGAY</button>



            </div>
          </div>
      </div>

<?php
    include('templates/footer.php')
?>
