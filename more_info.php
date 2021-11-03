<?php
require_once("config/constants.php");
include('templates/header-login.php')
?>
<?php
$id= $_GET['tour_id'];
  $sql= "SELECT * FROM tours, restaurants, hotels, tourguides WHERE tours.hotel_id=hotels.hotel_id AND tours.res_id=restaurants.res_id AND tours.tour_guide_id=tourguides.tour_guide_id AND tour_id= $id;";
  $query= mysqli_query($conn,$sql);
  $row= mysqli_fetch_assoc($query);  
?>
<main role="main">
    <div class="tour-detail">

        <div class="entry-head">

            <section class="section-01">
                <div class="container-xl">
                    <div class="row">
                        <div class="col-md-6 col-12 left">
                            <div class="warp-mark">
                                <i class="fal fa-ticket"></i><label>NDSGN907-029-121121VN-P</label>
                            </div>
                            <h1 class="title"><?php echo $row['tour_name']?></h1>
                            <div class="short-rating">
                                <div class="s-rate">
                                    <span>9.08</span>
                                    <div class="s-comment">
                                        <h4>Tuyệt vời</h4>
                                        <p>379 nhận xét</p>
                                    </div>
                                </div>
                                <div class="s-wishlist">
                                    <i class="fas fa-heart"></i><label>126</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-12 right">
                            <div class="group-price">
                                <div class="sale-price">
                                    <p><span class="price"><?php echo $row['price_per_person']?></span>/ khách</p>
                                </div>
                                <div class="saving">
                                </div>
                            </div>
                            <div class="group-add-cart">
                                <a href="/Booking/TourBooking?tourId=965c5d09-b690-4307-9bd9-defc52da3968"
                                    class="add-to-cart">
                                    <i class="fal fa-shopping-cart"></i>
                                    <label>
                                        Đặt ngay
                                    </label>
                                </a>
                                <a href="#" class="add-to-group" data-bs-toggle="modal" data-bs-target="#supportModal">
                                    <label>Liên hệ tư vấn</label>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </section>


            <section class="section-02">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-7 col-md-12 col-sm-12 left">
                            <div class="image">
                                <img src=<?php echo $row['image_1']?>
                                    class="img-fluid" alt="image">
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-sm-12 right">
                            <div class="row gy-4">
                                <div class="col-md-12 col-sm-12 small">
                                    <div class="row">
                                        <div class="col-6">
                                            <div class="image">
                                                <img src=<?php echo $row['image_2']?>
                                                    class="img-fluid" alt="image">
                                            </div>
                                        </div>
                                        <div class="col-6">
                                            <div class="image">
                                                <img src=<?php echo $row['image_3']?>
                                                    class="img-fluid" alt="image">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12 col-sm-12 big">
                                    <div class="image">
                                        <img src=<?php echo $row['image_4']?>
                                            class="img-fluid" alt="image">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
        <div class="tab-panels">
            <div class="overview active">

                <section class="section-03 mb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-5 col-12 left">
                                <p class="s-title-03 tour-des"><?php echo $row['description']?></p>
                                <div class="box-code d-lg-none">
                                    <div class="d-flex flex-column">
                                        <span>Mã tour:</span>
                                        <span class="fw-bold">NDSGN907-029-121121VN-P</span>
                                    </div>
                                    <i class="icon icon--ticket"></i>
                                </div>
                                <div class="box-order">
                                    <div class="time">
                                        <p>Khởi hành <b>12/11/2021</b></p>
                                        <p>Thời gian <b><?php echo $row['day_count']?></b></p>
                                        <p>Nơi khởi hành <b>TP. Hồ Chí Minh</b></p>
                                        <p>
                                            Số chỗ còn nhận <b><?php echo $row['max']?></b>
                                        </p>
                                    </div>
                                    <div class="calendar">
                                        <div class="calendar-box">
                                            <i class="icon icon--calendar"></i>
                                            <label><a href="/tim-tour/NDSGN907/ket-qua-tim-kiem.aspx"> Ngày
                                                    khác</a></label>
                                        </div>
                                    </div>
                                </div>
                                <div class="box-support">
                                    <label>Quý khách cần hỗ trợ?</label>
                                    <div class="group-contact">
                                        <a href="https://webcall.talking.vn/frame-click-to-call/new?code=tCEZl1-MKPuA6JU-czVAScCb0pPkHmPt"
                                            onclick="javascript:window.open(this.href,'targetWindow','toolbar=no,location=no,status=no,menubar=no,scrollbars=no,resizable=no,width=375,height=667');return false;"
                                            target="_blank" class="phone">
                                            <i class="icon icon--phone"></i>
                                            <p>Gọi miễn phí <br>qua internet</p>
                                        </a>
                                        <a href="mailto:info@vietravel.com" class="mail">
                                            <i class="icon icon--mail"></i>
                                            <p>Gửi yêu cầu <br>hỗ trợ ngay</p>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-7 col-12 right">
                                <div class="group-services">
                                    <div class="item">
                                        <i class="icon icon--calendar"></i>
                                        <label>Thời gian</label>
                                        <p><?php echo $row['day_count']?></p>
                                    </div>
                                    <div class="item">
                                        <i class="icon icon--map"></i>
                                        <label>Điểm tham quan</label>
                                        <p><?php echo $row['places']?></p>
                                    </div>
                                    <div class="item">
                                        <i class="icon icon--fire"></i>
                                        <label>Ẩm thực</label>
                                        <p></p>
                                    </div>
                                    <div class="item">
                                        <i class="icon icon--hotel"></i>
                                        <label>Khách sạn</label>
                                        <p><?php echo $row['hotel_name']?> </p>
                                    </div>
                                    <div class="item">
                                        <i class="icon icon--tour"></i>
                                        <label>Phương tiện di chuyển</label>
                                        <p>Máy bay Vietnam Airlines hạng Thương Gia</p>
                                    </div>
                                    <div class="item">
                                        <i class="icon icon--sparkle"></i>
                                        <label>Dịch vụ đi kèm</label>
                                    </div>
                                </div>
                                <div class="box-map hardCode d-none">
                                    <div class="addess">
                                        <i class="icon icon--location-marker"></i>
                                        <label>VinWonder, Đ. Phú Quốc, Việt Nam</label>
                                    </div>
                                    <div class="map">
                                        <i class="icon icon--map"></i>
                                        <label>VinWonder, Đ. Phú Quốc, Việt Nam</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>






            </div>
            <div class="map-route">

                <section class="section-06 mb-5">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-12">
                                <h2 class="mb-4">Lịch trình</h2>
                            </div>
                        </div>
                    </div>
                </section>
                <section class="section-07 mb-5">
                    <div class="container">
                        <div class="row">
                        <?php echo $row['travel_schedule']?>
                        </div>
                    </div>
                </section>


                <section class="section-08 mb-5">
                    <div class="container-xl">
                        <div class="row">
                            <div class="col-md-6 col-12 right">
                                <h2 class="tt mt-3">Thông tin hướng dẫn viên</h2>
                                <div class="table-price">
                                    <div class="more-info more-info-2">
                                        <div class="block">
                                            <span>HDV dẫn đoàn</span>
                                            <div id="divThongTinHDV">
                                                <div class="info" style="width:100%">
                                                    <p><?php echo $row['name']?></p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="block">
                                            <span>HDV tiễn</span>
                                            <div id="divThongTinHDVTien">
                                                <div class="info" style="width:100%">
                                                    <p><?php echo $row['name']?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>

            </div>
            <div class="note-info">

                <div class="note-info">
                    <section class="section-09">
                        <div class="container">
                            <div class="row">
                                <h2>Những thông tin cần lưu ý</h2>
                                <div class="col-md-6 col-12 left">
                                    <div class="faqs">
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Giá tour bao gồm?</h3>
                                            <div class="panel">
                                                · 02 đêm phòng Ocean View Villa tại Premier Village Phu Quoc Resort: Mũi
                                                Ông Đội, An Thới. <br>· Vé máy bay khứ hồi hạng thương gia, và sử dụng
                                                phòng chờ thương gia.
                                                <br>· Hướng dẫn viên theo phục vụ đoàn suốt tuyến.
                                                <br>· Chi phí ăn uống và xe đưa đón tham quan theo chương trình.
                                                <br>· Thư giãn trong hồ bơi tràn hướng biển và chiêm ngưỡng vẻ đẹp yên
                                                bình <br>· Tham gia hoạt động tĩnh dưỡng với yoga theo lịch của khu nghỉ
                                                dưỡng.
                                                <br>· Sử dụng tiện ích gồm phòng gym hiện đại, khu vui chơi trẻ em.
                                                <br>· Sử dụng tiện nghi của resort như hồ bơi, phòng gym.
                                                <br>· Thuế, phí dịch vụ.
                                                <br> <br>- Thời gian nhận phòng: Từ 14h00 của ngày đến.
                                                <br>- Thời gian trả phòng: Trước 12h00 của ngày đi.
                                                <br> <br>Điều kiện áp dụng
                                                <br>· Đặt tối thiểu 4 khách/booking
                                                <br>· Dành cho khách Việt Nam, Việt Kiều
                                                <br>· Không áp dụng giai đoạn Lễ
                                                <br>
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Giá tour không bao gồm</h3>
                                            <div class="panel">
                                                · Các chi phí khác không bao gồm trong giá
                                                <br>· Chi phí cá nhân: ăn uống ngoài chương trình, giặt ủi, hành lý quá
                                                cước, phụ thu phòng đơn.
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Giá vé trẻ em</h3>
                                            <div class="panel">
                                                · Trẻ em dưới 5 tuổi: không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh
                                                toán các chi phí phát sinh (đối với các dịch vụ tính phí theo chiều
                                                cao…). Hai người lớn chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ
                                                đóng phí theo qui định dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu
                                                phòng đơn. Riêng vé máy bay trẻ em sẽ mua vé theo qui định tuổi của đơn
                                                vị vận chuyển.
                                                <br>· Trẻ em từ 5 - dưới 12 tuổi: 75% giá người lớn (không có chế độ
                                                giường riêng). Hai người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi,
                                                em thứ hai trở lên phải mua 1 suất giường đơn. <br>· Trẻ em từ 12 tuổi
                                                trở lên sẽ tính như người lớn.
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Điều kiện thanh toán</h3>
                                            <div class="panel">
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Các điều kiện khi đăng ký tour</h3>
                                            <div class="panel">
                                                · Khi đăng ký Quý khách vui lòng cung cấp giấy tờ tùy thân tất cả người
                                                đi: Chứng minh nhân dân/Hộ chiếu (Passport)/Giấy khai sinh (trẻ em dưới
                                                14 tuổi). Trong trường hợp đăng ký trực tuyến qua www.travel.com.vn vui
                                                lòng nhập tên chính xác theo thứ tự: Họ/tên lót/tên xuất vé máy bay. Quý
                                                khách khi đăng ký cung cấp tên theo giấy tờ tùy thân nào, khi đi tour
                                                mang theo giấy tờ tùy thân đó. <br>· Quy định giấy tờ tùy thân khi đi
                                                tour : <br>+ Khách quốc tịch Việt Nam: Trẻ em dưới 14 tuổi Giấy khai
                                                sinh bản chính/Hộ chiếu bản chính còn giá trị sử dụng. Trẻ em từ 14 tuổi
                                                trở lên và Người lớn CMND/ Hộ chiếu bản chính còn giá trị sử dụng. Lưu ý
                                                trẻ em trên 14 tuổi bắt buộc phải có CMND/Hộ chiếu làm thủ tục lên máy
                                                bay hoặc Giấy xác nhận nhân thân theo mẫu quy định và chỉ có giá trị
                                                trong vòng 30 ngày kể từ ngày xác nhận. <br>+ Khách quốc tịch nước ngoài
                                                hoặc là Việt kiều: Khi đi tour vui lòng mang theo hộ chiếu bản chính
                                                (Passport) hoặc thẻ xanh kèm thị thực nhập cảnh (visa dán vào hộ chiếu
                                                hoặc tờ rời hoặc cuốn miễn thị thực, các loại giấy tờ này phải có dấu
                                                nhập cảnh Việt Nam và còn giá trị sử dụng theo quy định khi đi tour).
                                                <br>· Thông tin tập trung: Tại sân bay Tân Sơn Nhất, Ga đi trong nước,
                                                trước giờ bay 2 tiếng <br>· Thông tin hành lý khi đi tour, xách tay dưới
                                                12kg/khách - kích thước không quá: 56cm x 36cm x 23 cm, chất lỏng với
                                                thể tích không quá 100ml. Ký gửi 20kg/1khách - kích thước không quá:
                                                119cm x 119cm x 81cm. Các vật phẩm không được chấp nhận dưới dạng hành
                                                lý ký gởi hoặc vận chuyển trong hành lý theo quy định hàng không <br>·
                                                Trong trường hợp Quý khách cung cấp tên sai, đến trễ giờ bay, vui lòng
                                                thanh toán phí đổi vé hoặc mua lại vé mới theo quy định của Hãng Hàng
                                                Không (nếu chuyến bay còn chỗ). <br>· Do các chuyến bay phụ thuộc vào
                                                các hãng Hàng Không giờ bay có thể thay đổi mà không được báo trước. Tùy
                                                vào tình hình thực tế, chương trình và điểm tham quan có thể linh động
                                                thay đổi thứ tự các điểm phù hợp điều kiện giờ bay và thời tiết thực tế.
                                                Vietravel sẽ không chịu trách nhiệm bảo đảm các điểm tham quan trong
                                                trường hợp:
                                                <br>+ Xảy ra thiên tai: bão lụt, hạn hán, động đất…
                                                <br>+ Sự cố về an ninh: khủng bố, biểu tình
                                                <br>+ Sự cố về hàng không: trục trặc kỹ thuật, an ninh, dời, hủy, hoãn
                                                chuyến bay.
                                                <br>· Nếu những trường hợp trên xảy ra, Vietravel sẽ xem xét để hoàn trả
                                                chi phí không tham quan cho khách trong điều kiện có thể (sau khi đã trừ
                                                lại các dịch vụ đã thực hiện….và không chịu trách nhiệm bồi thường thêm
                                                bất kỳ chi phí nào khác).
                                                <br>· Sau khi Quý khách đã làm thủ tục Hàng Không và nhận thẻ lên máy
                                                bay, đề nghị Quý khách giữ cẩn thận và lưu ý lên máy bay đúng giờ.
                                                Vietravel không chịu trách nhiệm trong trường hợp khách làm mất thẻ lên
                                                máy bay và không lên máy bay đúng theo giờ quy định của Hàng Không.
                                                <br>· Phòng khách sạn/resort có thể xảy ra trường hợp phòng không gần
                                                nhau, không cùng tầng, loại phòng một giường đôi hoặc hai giường đơn
                                                không theo yêu cầu, tùy tình hình thực tế từng khách sạn/Resort. <br>·
                                                Trường hợp quý khách đi nhóm 03 khách, Vietravel sẽ cung cấp 01 phòng
                                                dành cho 03 khách là 01 giường lớn 1m6 và 01 giường phụ di động từ 0.8 -
                                                1,2m (extrabed). Trong trường hợp quý khách có nhu cầu ở riêng, vui lòng
                                                đóng thêm tiền phụ thu phòng đơn theo quy định. <br>· Trong trường hợp
                                                Quý khách có yêu cầu nâng chuẩn loại phòng cao cấp hơn vui lòng liên hệ
                                                phụ trách tuyến &amp; thanh toán chí phát sinh tùy hạng phòng yêu cầu
                                                (nếu có). <br>· Đối với các chương trình tham quan biển đảo, trong
                                                trường hợp Quý khách không khỏe, có tiền sử bệnh hoặc có chất kích thích
                                                trong người (rượu, bia…) thì không nên tắm &amp; lặn biển để đảm bảo sự
                                                an toàn.
                                                <br>· Cam kết đã được tư vấn hiểu rõ và đồng ý các quy định liên quan về
                                                điều kiện sức khỏe khi tham gia chương trình du lịch. Khách nữ từ 55
                                                tuổi trở lên và khách nam từ 60 trở lên: nên có người thân dưới 55 tuổi
                                                (đầy đủ sức khỏe) đi cùng. Riêng khách từ 70 tuổi trở lên: Bắt buộc phải
                                                có người thân dưới 55 tuổi (đầy đủ sức khỏe) đi cùng. Hạn chế nhận khách
                                                từ 80 tuổi trở lên. Khách từ 80 tuổi không có chế độ bảo hiểm. Quý khách
                                                mang thai vui lòng báo cho nhân viên bán tour ngay tại thời điểm đăng
                                                ký. Phải có ý kiến của bác sĩ trước khi đi tour, tự chịu trách nhiệm về
                                                sức khỏe của mình và thai nhi trong suốt thời gian tham gia chương trình
                                                du lịch. Khi đi tour phải mang theo sổ khám thai và giấy tờ tùy thân
                                                theo quy định hãng hàng không. Tuần thai từ 28 tuần trở đi phải mang
                                                theo giấy khám thai trong vòng 7 ngày trở lại. Cam kết bản thân và người
                                                thân hoàn toàn có đủ sức khỏe để đi du lịch theo chương trình. Đồng ý
                                                miễn trừ toàn bộ trách nhiệm pháp lý, không khiếu nại, không yêu cầu bồi
                                                thường đối với Vietravel nói chung và nhân viên Vietravel nói riêng về
                                                tất cả các vấn đề xảy ra liên quan đến tình trạng sức khỏe của khách
                                                hàng khi tham gia tour hoặc sử dụng các dịch vụ do Vietravel cung cấp.
                                                Quý khách cam kết tự chịu mọi chi phí phát sinh ngoài chương trình tour
                                                liên quan đến việc giải quyết các rủi ro về sức khỏe (lưu trú, vận
                                                chuyển, chi phí khám chữa bệnh...) – ngoại trừ các chi phí thuộc hạng
                                                mục bảo hiểm sẽ do Công ty Bảo hiểm hoàn trả theo quy định.
                                                <br>· Quý khách có nhu cầu cần xuất hóa đơn vui lòng cung cấp thông tin
                                                xuất hóa đơn cho nhân viên bán tour khi ngay khi đăng ký hoặc trước khi
                                                thanh toán hết, không nhận xuất hóa đơn sau khi tour đã kết thúc. <br>·
                                                Quý khách vui lòng đọc kỹ chương trình, giá tour, các khoản bao gồm cũng
                                                như không bao gồm trong chương trình, các điều kiện hủy tour trên biên
                                                nhận đóng tiền. Tùy thời điểm đăng ký, kênh bán, giá tour có thể thay
                                                đổi. Trong trường hợp Quý khách không trực tiếp đến đăng ký tour mà do
                                                người khác đến đăng ký thì Quý khách vui lòng tìm hiểu kỹ chương trình
                                                từ người đăng ký cho mình
                                            </div>
                                        </article>
                                    </div>
                                </div>
                                <div class="col-md-6 col-12 right">
                                    <div class="faqs">
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Lưu ý khi chuyển/ hủy tour?</h3>
                                            <div class="panel">
                                                Sau khi đóng tiền, nếu Quý khách muốn chuyển/huỷ tour xin vui lòng mang
                                                Vé Du Lịch đến văn phòng đăng ký tour để làm thủ tục chuyển/huỷ tour và
                                                chịu mất phí theo quy định của Vietravel. Không giải quyết các trường
                                                hợp liên hệ chuyển/huỷ tour qua điện thoại.
                                                <br> <br>
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Các điều kiện hủy tour đối với ngày thường</h3>
                                            <div class="panel">
                                                · Được chuyển sang các tuyến du lịch khác trước ngày khởi hành 30 ngày :
                                                Không mất chi phí.
                                                <br>· Nếu hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng
                                                ký từ 25-29 ngày trước ngày khởi hành: Chi phí hủy tour: 50% tiền cọc
                                                tour.
                                                <br>· Nếu hủy hoặc chuyển sang các chuyến du lịch khác từ 20-24 ngày
                                                trước ngày khởi hành: Chi phí hủy tour: 100% tiền cọc tour.
                                                <br>· Nếu hủy chuyến du lịch trong vòng từ 17-19 ngày trước ngày khởi
                                                hành: Chi phí hủy tour: 50% trên giá tour du lịch.
                                                <br>· Nếu hủy chuyến du lịch trong vòng từ 08-16 ngày trước ngày khởi
                                                hành: Chi phí hủy tour: 70% trên giá tour du lịch.
                                                <br>· Nếu hủy chuyến du lịch trong vòng từ 02-07 ngày trước ngày khởi
                                                hành: Chi phí hủy tour: 90% trên giá vé du lịch.
                                                <br>· Nếu hủy chuyến du lịch trong vòng 1 ngày trước ngày khởi hành :
                                                Chi phí hủy tour: 100% trên giá vé du lịch.
                                                <br>Thời gian hủy được tính cho ngày làm việc, không tính thứ 7, Chủ
                                                Nhật và các ngày Lễ, Tết. <br>
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>
                                                Các điều kiện hủy tour đối với ngày lễ, Tết
                                            </h3>
                                            <div class="panel">
                                                <p>
                                                    Áp dụng cho các tour có thời gian
                                                    diễn ra rơi vào một trong các ngày Lễ, Tết theo qui định
                                                </p>
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Trường hợp bất khả kháng</h3>
                                            <div class="panel">
                                                - Nếu chương trình du lịch bị hủy bỏ hoặc thay đổi bởi một trong hai bên
                                                vì lý do bất khả kháng (hỏa hoạn, thời tiết, tai nạn, thiên tai, chiến
                                                tranh, dịch bệnh, hoãn, dời, và hủy chuyến hoặc thay đổi khác của các
                                                phương tiện vận chuyển công cộng hoặc các sự việc bất khả kháng khác
                                                theo quy định pháp luật…), thì hai bên sẽ không chịu bất kỳ nghĩa vụ bồi
                                                hoàn các tổn thất đã xảy ra và không chịu bất kỳ trách nhiệm pháp lý
                                                nào. Tuy nhiên mỗi bên có trách nhiệm cố gắng tối đa để giúp đỡ bên bị
                                                thiệt hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất khả kháng.
                                            </div>
                                        </article>
                                        <article>
                                            <i class="open far fa-chevron-down"></i>
                                            <h3>Liên hệ</h3>
                                            <div class="panel">


                                                <title></title>


                                                <div style="text-align: center;">
                                                    <strong>Mọi chi tiết vui lòng liên hệ :</strong>
                                                </div>
                                                <div style="text-align: center;">
                                                    KHỐI KHÁCH LẺ - DU LỊCH TRONG NƯỚC</div>
                                                <div style="text-align: center;">
                                                    190 PASTEUR, PHƯỜNG VÕ THỊ SÁU, QUẬN 3, TP.HCM</div>
                                                <div style="text-align: center;">
                                                    Điện thoại: (84-28) 3822 8898</div>
                                                <div style="text-align: center;">
                                                    Hotline: 0938.301.399 - Tổng đài tư vấn từ 8h - 22h:&nbsp; 1900 1839
                                                </div>
                                                <div style="text-align: center;">
                                                    <strong>VIETRAVEL KÍNH CHÚC QUÝ KHÁCH MỘT CHUYẾN DU LỊCH VUI
                                                        VẺ&nbsp;&nbsp;</strong>
                                                </div>


                                            </div>
                                        </article>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>

            </div>
            <div class="customer-comments">


            </div>
        </div>
        <div class="related d-none d-lg-block">

            <section class="section-11" id="divTourGoiY">
                <div class="container">
                    <div class="row">
                        <h2>Có thể Quý khách sẽ thích</h2>
                        <div class="products">
                            <div class="product">
                                <div class="product-inner">
                                    <div class="product-image">
                                        <a
                                            href="/tourNDSGN905-029-201121VN-P/nha-trang-trai-nghiem-golf-du-thuyen-ngam-hoang-hon-an-lam-bay-chuong-trinh-nghi-duong-tai-an-lam-retreats-ninh-van-bay-cung-hang-khong-vietnam-airlines-hang-thuong-gia.aspx">
                                            <img src="https://media.travel.com.vn/destination/tf_200724040240_477695.jpg"
                                                alt="image">
                                        </a>
                                        <a href="#" class="wishlist-button"><i class="icon icon--heart"></i></a>
                                        <div class="s-rate">
                                            <span>9.28</span>
                                        </div>
                                    </div>
                                    <div class="product-content">
                                        <span class="meta"> 20/11/2021 </span>
                                        <h3 class="product-title">
                                            <a href="/tourNDSGN905-029-201121VN-P/nha-trang-trai-nghiem-golf-du-thuyen-ngam-hoang-hon-an-lam-bay-chuong-trinh-nghi-duong-tai-an-lam-retreats-ninh-van-bay-cung-hang-khong-vietnam-airlines-hang-thuong-gia.aspx"
                                                title="Nha Trang - Trải Nghiệm Golf - Du Thuyền Ngắm Hoàng Hôn An Lâm Bay - Chương trình nghỉ dưỡng tại An Lam Retreats Ninh Van Bay - Cùng hàng không Vietnam Airlines hạng Thương Gia">Nha
                                                Trang - Trải Nghiệm Golf - Du Thuyền Ngắm Hoàng Hôn An Lâm Bay - Chương
                                                trình nghỉ dưỡng tại An Lam Retreats Ninh Van Bay - Cùng hàng không
                                                Vietnam Airlines hạng Thương Gia</a>
                                        </h3>
                                        <p class="des">Nơi khởi hành TP. Hồ Chí Minh</p>
                                        <div class="row">
                                            <div class="btn-book col-5">
                                                <a id="btnDatNgay"
                                                    href="/Booking/TourBooking?tourId=1cca2620-51dc-4388-a82a-d89791eef22f"
                                                    class="btn btn-primary btn-sm">
                                                    <i class="icon icon--shopping p-1"></i><label>Đặt ngay</label>
                                                </a>
                                            </div>
                                            <div class="group-price col-7">
                                                <div class="sale-price">
                                                    <span class="price">23,990,000 ₫</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        </div>
    </div>

    <div class="mb-total d-none">
        <div class="total">
            <i class="icon icon--chevron-up"></i>

        </div>
        <div class="group-btn">

            <div class="summary">
                <div class="group-price">
                    <span class="price"> 24,990,000₫</span>
                </div>
                <span class="rating"><i class="icon icon--star"></i> 9.3</span>
            </div>
            <a type="button" href="/Booking/TourBooking?tourId=965c5d09-b690-4307-9bd9-defc52da3968"
                class="btn-order">Tiếp tục</a>
        </div>
    </div>


    <div class="modal fade" id="supportModal" tabindex="-1" aria-labelledby="supportModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <form id="form-support" action="/Comment/TuVan" method="post"><input name="__RequestVerificationToken"
                    type="hidden"
                    value="lSRz8uG-Iaj_dt9QH37I1LeHQAuye9noferAuQyC2BMQ9DbARUIYY5vs9v0LsEqjeEkRCEtfvJR12GVfef78h7mE3-GxvdZC2j8-tJa749A1">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">GỬI THÔNG TIN TƯ VẤN</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <p>
                            Quý khách vui lòng nhập thông tin bên dưới, Vietravel sẽ liên hệ
                            lại sau ít phút
                        </p>
                        <div class="row g-3">
                            <div class="col-12">
                                <label for="name" class="form-label">Họ tên<span class="required-star">*</span></label>
                                <input type="text" class="form-control" id="name"
                                    placeholder="Nhập họ tên của Quý khách" value="" name="Fullname" required="">
                            </div>
                            <div class="col-12">
                                <label for="phone" class="form-label">Điện thoại<span
                                        class="required-star">*</span></label>
                                <input type="text" class="form-control" id="phone" placeholder="Nhập số điện thoại"
                                    value="" name="Telephone" required="">
                            </div>
                            <div class="col-12">
                                <label for="email" class="form-label">Email<span class="required-star">*</span></label>
                                <input type="email" class="form-control" id="email" placeholder="you@example.com"
                                    name="Email" required="">
                            </div>
                            <div class="col-12">
                                <label for="note" class="form-label">
                                    Thông tin cần tư vấn
                                </label>
                                <textarea id="note" rows="3" class="form-control" name="NoiDung"
                                    placeholder="Quý khách cần tư vấn về vấn đề gì" required=""></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Gửi đi</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

</main>

<?php
include('templates/footer.php')
?>