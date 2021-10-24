<?php
    require('templates/header.php');
    require("config/constants.php");
?>

<main role ="main">
  <div class="container">
    <div class="row">
      <ul class="breadcrumbs__wrapper d-flex align-items-center" itemscope="" itemtype="http://schema.org/BreadcrumbList">
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
          <a href="#" itemprop="item">
            <span itemprop="name">Du lịch</span>
          </a>
          <meta itemprop="position" content="1">
        </li> » 
        <li>
          <i class="icon icon--chevron - right px - 2"></i>
        </li>
        <li itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
          <a href="#" itemprop="item">
            <span itemprop="name">Đặt tour Trong nước</span>
          </a>
          <meta itemprop="position" content="2">
        </li>
      </ul>
    </div>
  </div>

  <section class="checkout-head d-none d-lg-block">
    <div class="container">
      <div class="row">
        <ul class="head col-12">
          <li class="checked">1. Nhập thông tin</li>
          <li class="checked"><i class="fal fa-angle-right"></i></li>
          <li>2. Thanh toán</li>
        </ul>
      </div>
    </div>
  </section>

  <section class="checkout-main order-tour">
    <div class="container">
      <div class="row">
        <div class="col-12 top">
          <div class="product">
            <div class="product-image">
              <div class="image">
                <img class="img-fluid" alt="image" src="images/anh1booking.jpg">
              </div>
            </div>
            <div class="product-content">
              <div class="s-rate">
                <span>4.7</span>
                <div class="s-comment">
                  <h4>Rất tốt</h4>
                  <span>358 nhận xét</span>
                  <span>Lượt đi <b>1,3k </b></span>
                </div>
              </div>
              <p class="title" id="title">Hành trình xanh Cần Giờ (Tàu cao tốc) - Khám phá KDL Sinh thái Dần Xây - Vàm Sát (Nhóm 6 khách)</p>
              <div class="entry">
                <div class="entry-inner">
                  <span>Khởi hành <b>28/10/2021</b></span>
                  <span>Thời gian <b>1 ngày</b></span>
                  <span>Nơi khởi hành <b>TP. Hồ Chí Minh</b></span>
                  <span>Số chỗ còn nhận <b>6</b></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-2 col-12 left"></div>
        <div class="col-md-10 col-12 right">
          <div class="box-support">
            <label>Quý khách cần hỗ trợ?</label>
            <div class="group-contact">
              <a href="#" class="phone" onclick="javascript:window.open(this.href,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=375,height=667');return false;" target="_blank">
                <i class="fal fa-phone-alt"></i>
                <p>Gọi miễn phí <br>qua internet</p>
              </a>
              <a href="#" class="mail" data-toggle="modal" data-target="#divTuVan" style="cursor:pointer;">
                <i class="fal fa-envelope"></i>
                <p>Gửi yêu cầu <br>hỗ trợ ngay</p>
              </a>
            </div>
          </div>
          <div class="group-checkout">
            <h3>Tóm tắt chuyến đi</h3>
            <p class="package-title">Tour trọn gói <span> (6 khách)</span></p>
            <div class="product">
              <div class="product-image">
                <img class="img-fluid" alt="image" src="images/anh1booking.jpg">
              </div>
              <div class="product-content">
                <p class="title">Hành trình xanh Cần Giờ (Tàu cao tốc) - Khám phá KDL Sinh thái Dần Xây - Vàm Sát (Nhóm 6 khách)</p>
              </div>
            </div>
            <div class="go-tour">
              <div class="start">
                <i class="fal fa-calendar-minus"></i>
                <div class="start-content">
                  <h4>Bắt đầu chuyến đi</h4>
                  <p class="time">T5, 28 Tháng 10, 2021</p>
                  <p class="from"></p>
                </div>
              </div>
              <div class="end">
                <i class="fal fa-calendar-minus"></i>
                <div class="start-content">
                  <h4>Kết thúc chuyến đi</h4>
                  <p class="time">T5, 28 Tháng 10, 2021</p>
                  <p class="from"></p>
                </div>
              </div>
            </div>
            <div class="detail">
              <table>
                <tbody>
                  <tr>
                    <th class="l1">Hành khách</th>
                    <th class="l2 text-right">
                      <i class="fal fa-users" id="AmoutPerson">6</i>
                      <p class="add-more"></p>
                    </th>
                  </tr>
                  <tr>
                    <td>Người lớn</td>
                    <td class="t-price text-right" id="AdultPrice">6 x 2,990,000₫</td>
                  </tr>
                  <tr>
                    <td>Trẻ em</td>
                    <td class="t-price text-right" id="ChildrenPrice">0 x 1,495,000₫</td>
                  </tr>
                  <tr>
                    <td>Trẻ nhỏ</td>
                    <td class="t-price text-right" id="SmallChildrenPrice">0 x 0₫</td>
                  </tr>
                  <tr>
                    <td>Em bé</td>
                    <td class="t-price text-right" id="BabyPrice">0 x 0₫ </td>
                  </tr>
                  <tr class="pt">
                    <td>Phụ thu phòng riêng</td>
                    <td class="t-price text-right" id="txtPhuThu">0₫</td>
                  </tr>
                  <tr class="cuppon">
                    <td>Mã giảm giá</td>
                    <td class="cp-form text-right">
                    <form action="#">
                      <input class="form-control" id="DiscountCode" name="DiscountCode" placeholder="Thêm mã" required="required" type="text" value="">
                      <input type="hidden" id="hdDiscountCode">
                      <input type="hidden" id="hdDiscountCode-Price" value="0">
                      <input type="button" class="btn btn-success" id="btnDiscountCode" value="Áp dụng">
                    </form>
                    </td>
                  </tr>
                  <tr id="spanDiscountCode" style="display: none;">
                    <td colspan="2">
                    Mã <span id="txtDiscountCode" class="fw-bold">Fake</span> giảm <span id="txtDiscountCode-Price" class="fw-bold">0₫</span> sẽ áp dụng khi hoàn tất.
                    </td>
                  </tr>
                  <tr class="total">
                    <td>Tổng cộng</td>
                    <td class="t-price text-right" id="TotalPrice">17,940,000₫</td>
                  </tr>
                </tbody>
              </table>
              <div>
                <button class="btn btn-primary btn-order" style="width:100% ">
                Đặt ngay
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>

<?php
    include('templates/footer.php')
?>
