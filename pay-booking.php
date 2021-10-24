<!--trang này là trang thanh toán 
Sau khi bấm đặt tour ở booking xong sẽ gửi link về mail xác nhận đặt tour 
bấm vào link xác nhận ở mail thì ra trang này -->   

<?php
    include('templates/header.php');
    require("config/constants.php");
?>

<main role ="main">
  <div class="container">
    <div class="row">
      <ul class="breadcrumbs__wrapper d-flex align-items-center" itemscope="" itemtype="http://schema.org/BreadcrumbList">
      </ul>
    </div>
  </div>

  <div class="checkout">
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

    <div class="checkout-main">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-12 left">
            <h2>Thanh toán</h2>
            <div class="payments-warp">
              <h3>Các hình thức thanh toán</h3>
              <div class="payments">
                <div class="payment-item active">
                  <div class="pm-head">
                    <h4>Tiền mặt</h4>
                    <span class="check"></span>
                  </div>
                  <div class="pm-des">
                    <p> 
                    <title></title>
                    </p><p>
                    Quý khách vui lòng thanh toán tại bất kỳ văn phòng Vietravel trên toàn quốc và các chi nhánh ngoài nước.</p>
                    <p>
                    Xin lưu ý, Quý khách nên liên lạc trước khi đến để biết rõ hơn về giờ làm việc và các hồ sơ cần chuẩn bị khi thanh toán.</p>
                    <p></p>
                  </div>
                </div>
                <div class="payment-item">
                  <div class="pm-head">
                    <h4>Chuyển khoản</h4>
                    <span class="check"></span>
                  </div>
                  <div class="pm-des">
                    <table border="0" cellpadding="0" cellspacing="0" width="100%">
                      <tbody>
                        <tr>
                          <td style="color:#fc3400;">
                          <strong>PHƯƠNG THỨC THANH TOÁN CHUYỂN KHOẢN :</strong></td>
                        </tr>
                        <tr>
                          <td>
                            <p style="margin-left: 10px">
                              -Vietravel chấp nhận thanh toán chuyển khoản từ ATM / Internet Banking / Quầy giao dịch khách hàng
                            </p>
                            <p style="margin-left: 10px">
                              -Quý khách sau khi thực hiện việc chuyển khoản vui lòng gửi email đến nhung@vietravel.com hoặc gọi tổng đài 1900.1839 để được xác nhận từ công ty chúng tôi.
                            </p>
                            <p style="margin-left: 10px">
                              -Vietravel xin gửi thông tin chuyển khoản như bên dưới để Quý khách thanh toán trước thời hạn ghi trên Thông tin đặt tour. Sau thời gian trên nếu Quý khách không chuyển khoản thanh toán, booking sẽ tự động huỷ ra.
                            </p>
                            <p style="margin-left: 10px">
                              -Vietravel sẽ không giải quyết các trường hợp booking tự động hủy nếu quý khách không thực hiện đúng các hướng dẫn trên.
                            </p>
                            <p style="margin-left: 10px">
                              <span style="color:#c00000;">Tên Tài Khoản : <strong>Công ty CP Du lịch và Tiếp thị GTVT Việt Nam – Vietravel</strong></span>
                            </p>
                            <p style="margin-left: 10px">
                              <span style="color:#c00000;">Tên tài khoản viết tắt : <strong>VIETRAVEL</strong></span>
                            </p>
                            <p style="margin-left: 10px">
                              <span style="color:#c00000;">Số Tài khoản : <strong>007 100 115 1480</strong></span>
                            </p>
                            <p style="margin-left: 10px">
                              <span style="color:#c00000;">Ngân hàng : <strong>Vietcombank – CN Tp.HCM</strong></span>
                            </p>
                          </td>
                        </tr> 
                      </tbody>
                    </table>
                  </div>
                </div>
                <div class="payment-item">
                  <div class="pm-head">
                    <h4>ATM / Internet Banking </h4>
                    <span class="check"></span>
                  </div>
                  <div class="pm-des">
                    <p align="left">
                      <strong><font color="#fc3400">HÌNH THỨC THANH TOÁN BẰNG THẺ ATM/ INTERNET BANKING</font></strong>
                    </p>
                    <p>
                      Vietravel chấp nhận thanh toán bằng thẻ ATM qua cổng thanh toán 123 pay.
                    </p>
                    <p>
                      Hãy đảm bảo bạn đang sử dụng thẻ ATM do ngân hàng trong nước phát hành và đã được kích hoạt chức năng thanh toán trực tuyến.
                    </p>
                  </div>
                </div>
              </div>
              <div class="payments">
                <div class="payment-item">
                  <div class="pm-head">
                    <h4>Thanh toán bằng mã QRCode</h4>
                    <span class="check"></span>
                  </div>
                  <div class="pm-des">
                    <div>&nbsp;</div>
                    <div>
                      Đây là cổng thanh toán cho phép Quý khách thanh toán từ tài khoản ngân hàng thông qua hình thức quét mã QR trên tính năng QR Pay trong ứng dụng Mobile Banking của các Ngân hàng.
                    </div>
                    <div>&nbsp;</div>
                    <div>
                      Sau khi Thông tin đặt tour của Quý khách được xác nhận, hệ thống sẽ hiển thị mã QR để Quý khách dùng thiết bị di động quét mã thanh toán.&nbsp;
                    </div>
                    <div>&nbsp;</div>
                  </div>
                </div>
                <div class="payment-item">
                  <div class="pm-head">
                    <h4>Thanh toán bằng Momo </h4>
                    <span class="check"></span>
                  </div>
                </div>
              </div>
            </div>

            <div class="terms">
              <h3>Điều khoản bắt buộc khi đăng ký online</h3>
              <div class="term-content">
                <p>
                <strong>ĐIỀU KIỆN BÁN VÉ CÁC CHƯƠNG TRÌNH DU LỊCH</strong></p>
                <p>
                <strong>I.&nbsp;&nbsp; GIÁ VÉ DU LỊCH</strong></p>
                <p>
                Giá vé du lịch được tính theo tiền Đồng (Việt Nam - VNĐ). Trường hợp khách thanh toán bằng USD sẽ được quy đổi ra VNĐ theo tỉ giá của ngân hàng Đầu Tư và Phát Triển Việt Nam - Chi nhánh TP.HCM tại thời điểm thanh toán.</p>
                <p>
                Giá vé chỉ bao gồm những khoản được liệt kê một cách rõ ràng trong phần “Bao gồm” trong các chương trình du lịch. Vietravel không có nghĩa vụ thanh toán bất cứ chi phí nào không nằm trong phần “Bao gồm”.</p>
                <p>
                <strong>III. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THANH TOÁN</strong></p>
                <p>
                Khi thanh toán, Quý khách vui lòng đặt cọc ít nhất 50% tổng số tiền tour để giữ chỗ, số tiền còn lại Quý khách sẽ thanh toán trước ngày khởi hành 05 ngày làm việc (tour ngày thường) và trước 10 ngày làm việc (tour dịp Lễ, Tết)”.</p>
                <p>
                Thanh toán bằng tiền mặt hoặc chuyển khoản tới tài khoản ngân hàng của Vietravel.</p>
                <p>
                <span style="color: rgb(192, 0, 0);">Tên Tài Khoản :&nbsp;<strong>Công ty CP Du lịch và Tiếp thị GTVT Việt Nam – Vietravel</strong></span></p>
                <p>
                <span style="color: rgb(192, 0, 0);">Tên tài khoản viết tắt :&nbsp;<strong>VIETRAVEL</strong></span></p>
                <p>
                <span style="color: rgb(192, 0, 0);">Số Tài khoản :&nbsp;<strong>007 100 115 1480</strong></span></p>
                <p>
                <span style="color: rgb(192, 0, 0);">Ngân hàng :&nbsp;<strong>Vietcombank – CN Tp.HCM</strong></span></p>
                <p>
                Việc thanh toán được xem là hoàn tất khi Vietravel nhận được đủ tiền vé du lịch trước lúc khởi hành hoặc theo hợp đồng thỏa thuận giữa hai bên. Bất kỳ mọi sự thanh toán chậm trễ dẫn đến việc hủy dịch vụ không thuộc trách nhiệm của Vietravel.</p>
                <p>
                Khách hàng có nhu cầu xuất hóa đơn, vui lòng cung cấp thông tin xuất hóa đơn ngay tại thời điểm đăng ký. Vietravel có trách nhiệm xuất hóa đơn cho khách hàng trong vòng 7 ngày sau khi tour kết thúc.</p>
                <p>
                <strong>DÀNH CHO KHÁCH HÀNG ĐĂNG KÝ TRÊN TRANG WWW.TRAVEL.COM.VN THANH TOÁN CHUYỂN KHOẢN:</strong></p>
                <p>
                Khi thực hiện việc chuyển khoản, Quý khách <strong>vui lòng ghi rõ Tên họ, Số điện thoại và Nội dung chuyển</strong> cho chương trình du lịch cụ thể đã được Quý khách chọn đăng ký. Sau khi thực hiện việc chuyển khoản, Quý khách vui lòng gửi Ủy Nhiệm Chi về công ty Vietravel theo địa chỉ email sales@vietravel.com và liên hệ với nhân viên phụ trách tuyến để nhận được Vé du lịch chính thức từ công ty Vietravel. Vietravel sẽ không giải quyết các trường hợp hệ thống tự động hủy phiếu đăng ký nếu Quý khách không thực hiện đúng qui định trên.</p>
                <p>
                <strong>IV.&nbsp;&nbsp; HỦY VÉ VÀ PHÍ HỦY VÉ DU LỊCH</strong></p>
                <p>
                <strong>1.&nbsp;&nbsp; Trường hợp bị hủy bỏ do Vietravel:</strong></p>
                <p>
                Nếu Vietravel không thực hiện được chuyến du lịch, Vietravel phải báo ngay cho khách hàng biết và thanh toán lại cho khách hàng toàn bộ số tiền khách hàng đã đóng trong vòng 3 ngày kể từ lúc việc thông báo hủy chuyến du lịch bằng tiền mặt hoặc chuyển khoản.</p>
                <p>
                <strong>2.&nbsp;&nbsp; Trường hợp bị hủy bỏ do khách hàng:</strong></p>
                <p>
                Sau khi đóng tiền, nếu Quý khách muốn chuyển/hủy tour xin vui lòng mang Vé Du Lịch đến văn phòng đăng ký tour để làm thủ tục chuyển/hủy tour và chịu mất phí theo quy định của Vietravel. Không giải quyết các trường hợp liên hệ chuyển/hủy tour qua điện thoại.</p>
                <p>
                <strong>•&nbsp;&nbsp;&nbsp;&nbsp; Đối với ngày thường:</strong></p>
                <p>
                -&nbsp;&nbsp; Được chuyển sang các tuyến du lịch khác trước ngày khởi&nbsp; hành 20 ngày : Không mất chi phí.</p>
                <p>
                -&nbsp;&nbsp; Hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký đến từ 15 - 19 ngày trước ngày khởi hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</p>
                <p>
                <strong>•&nbsp;&nbsp;&nbsp;&nbsp; Đối với ngày lễ, Tết:&nbsp; </strong></p>
                <p>
                -&nbsp;&nbsp; Được chuyển sang các tuyến du lịch khác trước ngày khởi &nbsp;hành 30 ngày : Không mất chi phí.</p>
                <p>
                -&nbsp;&nbsp; Hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký đến từ 25 - 29 ngày trước ngày khởi hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</p>
                <p>
                <strong><em>* Các tour ngày Lễ, Tết là các tour có thời gian diễn ra rơi vào một trong các ngày lễ, tết theo qui định.</em></strong></p>
                <p>
                <strong><em>* Thời gian hủy tour được tính cho ngày làm việc, không tính thứ 7, Chủ Nhật và các ngày Lễ, Tết.</em></strong></p>
                <p>
                <strong>DÀNH CHO KHÁCH HÀNG ĐĂNG KÝ TRÊN TRANG WWW.TRAVEL.COM.VN THANH TOÁN TRỰC TUYẾN:</strong></p>
                <p>
                Khách hàng hủy Vé du lịch trong thời điểm ngày Thường và Lễ Tết theo đúng những qui định trên, trong trường hợp khách thanh toán trực tuyến, nếu hủy Vé du lịch khách hàng sẽ chịu toàn bộ phí ngân hàng cho việc thanh toán tiền Vé du lịch. Việc hoàn trả tiền cho khách sẽ được Vietravel thực hiện ngay sau khi ngân hàng thông báo tiền đã vào tài khoản của Vietravel.</p>
                <p>
                <strong>3.&nbsp;&nbsp; Trường hợp bất khả kháng:</strong></p>
                <p>
                Nếu chương trình du lịch bị hủy bỏ hoặc thay đổi bởi một trong hai bên vì một lý do bất khả kháng (hỏa hoạn, thời tiết, tai nạn, thiên tai, chiến tranh, dịch bệnh, hoãn, dời, hủy chuyến hoặc thay đổi khác của các phương tiện vận chuyển công cộng hoặc các sự kiến bất khả kháng khác theo quy định pháp luật…), thì hai bên sẽ không chịu bất kỳ nghĩa vụ bồi hoàn các tổn thất đã xảy ra và không chịu bất kỳ trách nhiệm pháp lý nào. Tuy nhiên mỗi bên có trách nhiệm cố gắng tối đa để giúp đỡ bên bị thiệt hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất khả kháng. Thời gian hoàn tiền dịch vụ do hủy tour vì trường hợp bất khả kháng sẽ được hoàn tất trong vòng 60 – 90 ngày phụ thuộc điều kiện các đối tác cung ứng dịch vụ.</p>
                <p>
                <strong>4. &nbsp;&nbsp;&nbsp;Thay đổi lộ trình:&nbsp; </strong></p>
                <p>
                Tùy theo tình hình thực tế, Vietravel giữ quyền thay đổi lộ trình, sắp xếp lại thứ tự các điểm tham quan hoặc hủy bỏ chuyến đi du lịch bất cứ lúc nào mà Vietravel thấy cần thiết vì sự thuận tiện hoặc an toàn cho khách hàng.</p>
                <p>
                <strong>V.&nbsp;&nbsp; NHỮNG YÊU CẦU ĐẶC BIỆT TRONG CHUYẾN DU LỊCH</strong></p>
                <p>
                Các yêu cầu đặc biệt của Quý khách phải được báo trước cho Vietravel ngay tại thời điểm đăng ký. Vietravel sẽ cố gắng đáp ứng những yêu cầu này trong khả năng của mình song sẽ không chịu trách nhiệm về bất kỳ sự từ chối cung cấp dịch vụ từ phía các nhà vận chuyển, khách sạn, nhà hàng và các nhà cung cấp dịch vụ độc lập khác.</p>
                <p>
                <strong>VI.&nbsp;&nbsp; KHÁCH SẠN</strong></p>
                <p>
                Khách sạn được cung cấp trên cơ sở những phòng có hai giường đơn (TWN) hoặc một giường đôi (DBL) tùy theo cơ cấu phòng của các khách sạn. Khách sạn do Vietravel đặt cho các chương trình tham quan có tiêu chuẩn tương ứng với các mức giá vé mà khách chọn khi đăng ký đi du lịch. Nếu cần thiết thay đổi về bất kỳ lý do nào, khách sạn thay thế sẽ tương đương với tiêu chuẩn của khách sạn ban đầu và sẽ được báo cho du khách trước khi khởi hành. Những yêu cầu đặc biệt của khách hàng nếu thông báo trước cho Vietravel sẽ được đáp ứng tùy theo khả năng cung cấp của khách sạn và khách hàng phải trả thêm tiền đối với các yêu cầu này (nếu có). Vietravel có quyền không đáp ứng những yêu cầu này nếu khách sạn từ chối cung cấp dịch vụ. Thời gian nhận phòng theo qui định tại các khách sạn là sau 14:00 và phải trả phòng trước 12:00. Đối với các trường hợp khách lưu trú tại hệ thống khách sạn/Resort 5 sao (Vinpearl, FLC, Grand Ho Tram Strip…) tuân thủ theo điều kiện hủy phạt của khách sạn/Resort cho từng thời điểm.</p>
                <p>
                <strong>VII.&nbsp;&nbsp; VẬN CHUYỂN</strong></p>
                <p>
                Phương tiện vận chuyển tùy thuộc theo từng chương trình du lịch.</p>
                <p>
                Với chương trình đi bằng xe: xe máy lạnh (4, 7, 15, 25, 35, 45 chỗ) sẽ được Vietravel sắp xếp tùy theo số lượng khách từng đoàn, phục vụ suốt chương trình tham quan.</p>
                <p>
                Với chương trình đi bằng xe lửa - máy bay - tàu cánh ngầm (phương tiện vận chuyển công cộng), trong một số chương trình các nhà cung cấp dịch vụ có thể thay đổi giờ khởi hành mà không báo trước, việc thay đổi này sẽ được Vietravel thông báo cho khách hàng nếu thời gian cho phép.</p>
                <p>
                Vietravel không chịu trách nhiệm bồi hoàn và trách nhiệm pháp lý với những thiệt hại về vật chất lẫn tinh thần do việc chậm trễ, thay đổi giờ giấc khởi hành của các phương tiện vận chuyển công cộng hoặc sự chậm trễ do chính hành khách gây ra. Vietravel chỉ thực hiện hành vi giúp đỡ để giảm bớt tổn thất cho hành khách.</p>
                <p>
                <strong>VIII.&nbsp;&nbsp; HÀNH LÝ</strong></p>
                <p>
                Hành lý gọn nhẹ, với các chương trình sử dụng dịch vụ hàng không, hành lý miễn cước sẽ do các hãng hàng không qui định. Vietravel không chịu trách nhiệm về sự thất lạc, hư hỏng hành lý hoặc bất kỳ vật dụng gì của du khách trong suốt chuyến đi, du khách tự bảo quản hành lý của mình. Nếu khách hàng bị mất hay thất lạc hành lý thì Vietravel sẽ giúp hành khách liên lạc và khai báo với các bộ phận liên quan truy tìm hành lý bị mất hay thất lạc. Việc bồi thường hành lý bị mất hay thất lạc sẽ theo qui định của các đơn vị cung cấp dịch vụ hoặc các đơn vị bảo hiểm (nếu có).</p>
                <p>
                <strong>IX.&nbsp;&nbsp; BẢO HIỂM DU LỊCH</strong></p>
                <p>
                Giá dịch vụ du lịch trọn gói đã bao gồm bảo hiểm du lịch trong nước với mức đền bù cao nhất là 120.000.000đ/khách Việt Nam/vụ cho nhân mạng và 12.000.000 VNĐ/khách Việt Nam/vụ cho hành lý .</p>
                <p>
                Điều kiện, điều khoản bảo hiểm: Theo quy tắc bảo hiểm khách du lịch trong nước QĐ số: 001321/2006 – BM/BHCN.</p>
                <p>
                Số hotline tư vấn về các điều kiện, điều khoản bảo hiểm 0938 30 1234</p>
                <p>
                <strong>X.&nbsp;&nbsp;&nbsp; </strong>Trong quá trình thực hiện, nếu xảy ra tranh chấp sẽ được giải quyết trên cơ sở thương lượng trong thời hạn 30 ngày kể từ ngày một trong hai bên đưa tranh chấp ra thương lượng. Hết thời hạn này nếu tranh chấp không được giải quyết hoặc một trong hai bên không đồng ý với kết quả thương lượng thì có quyền đưa tranh chấp ra giải quyết tại Tòa án thẩm quyền.</p>
                <p>
                <strong><em>* Vé du lịch được xem như Hợp đồng lữ hành và được lập thành 2 bản, mỗi bên giữ một bản, có giá trị như nhau.</em></strong></p>
                <p>
                &nbsp;</p>
                ;
              </div>

              <label class="checker">
                Tôi đồng ý với các điều kiện trên
                <input type="checkbox" id="DieuKien">
                <span class="checkmark"></span>
              </label>
              </div>
            </div>
          </div>

          <div class="col-md-4 col-12 right">
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
    </div>

  </div>
</main>

<?php
    include('templates/footer.php')
?>