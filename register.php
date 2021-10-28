<?php
ob_start(); // loi cua header()
include("./templates/header.php");
require("config/constants.php");
?>
<div class="main-content">
    <!-- <div id="breadcrum">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                    </div>
                </div>
            </div>
        </div> -->
    <div class="main-content" style="margin-top: 30px;">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center mg-bot30">
                    <h2>Đăng kí hội viên</h2>
                </div>
                <div class="col-xs-12">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 noidungtin">
                            <p>
                                <strong style="color:#1583e0 !important;">
                                    ĐĂNG KÝ HỘI VIÊN
                                </strong>
                            </p>
                            <p>
                                Để hoàn tất đăng ký Hội viên VietravelPlus, quý khách vui lòng điền đầy đủ thông tin vào mẫu dưới đây và nhấn vào nút đăng ký. Xin chân thành cảm ơn quý khách hàng.
                            </p>
                            <?php
                            if (isset($_SESSION['noti'])) {
                                echo "<br>";
                                echo $_SESSION['noti'];
                                unset($_SESSION['noti']);
                            }
                            ?>
                            <br>
                            <form action="" method="POST">
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Họ và tên
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="text" name="user_name" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Giới tính
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="text" name="gender" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Ngày sinh
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="date" name="birthday" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Di động
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="text" name="phone_number" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Email
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="text" name="email" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Mật khẩu
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="password" name="passwrod" class="form-control">
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12">
                                    <label>
                                        Nhập lại
                                        :
                                    </label>
                                </div>
                                <div class="col-md-4 col-sm-4 col-xs-12">
                                    <input type="password" name="passwrod2" name="" class="form-control">
                                </div>
                                <hr>
                                <div class="col-md-12 col-sm-12 col-xs-12 mg-bot15 text-end">
                                    <input type="submit" name="submit" value="Đăng kí" class="btn btn-primary">
                                </div>
                            </form>
                        </div>
                        <hr>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-xs-12">
                            <div class="noidungtin">
                                <p>
                                    <strong style="color:#1583e0 !important;">ĐIỀU KHOẢN ĐĂNG KÝ HỘI VIÊN</strong>
                                </p>
                                <p>
                                    - Hội viên đăng ký chương trình cung cấp đúng các thông tin về số điện thoại, địa chỉ liên hệ, địa chỉ email của Hội viên. Khi có thay đổi, Hội viên có thể tự cập nhật vào tài khoản tại VietravelPlus.com hoặc liên hệ thông báo trực tiếp với nhân viên Vietravel và yêu cầu cập nhật.
                                </p>
                                <p>
                                    - Hội viên đăng ký chương trình cung cấp đúng các thông tin về số điện thoại, địa chỉ liên hệ, địa chỉ email của Hội viên. Khi có thay đổi, Hội viên có thể tự cập nhật vào tài khoản tại VietravelPlus.com hoặc liên hệ thông báo trực tiếp với nhân viên Vietravel và yêu cầu cập nhật.
                                </p>
                                <p>
                                    - Hội viên tham gia chương trình được cộng điểm Vàng và điểm Thưởng sau khi sử dụng dịch vụ tại Vietravel theo hệ số cộng điểm và theo các quy định về điểm thưởng khác được công bố tại từng thời điểm.
                                </p>
                                <p>
                                    - Vietravel có quyền thay đổi các điều kiện và điều khoản của chương trình Khách hàng thân thiết bất kỳ thời điểm nào có (hoặc không) báo trước và sẽ công bố chính thức trên VietravelPlus.com.
                                </p>
                                <p>
                                    - Vietravel có quyền sửa đổi cách thức của chương trình hoặc những quyền lợi có được từ chương trình tại bất kỳ thời điểm nào, có (hoặc không) báo trước và sẽ công bố chính thức trên VietravelPlus.com.
                                </p>
                                <p>
                                    - Vietravel có quyền tạm ngừng hoặc chấm dứt toàn bộ chương trình Khách hàng thân thiết tại bất kỳ thời điểm nào, có (hoặc không) báo trước.
                                </p>
                                <p>
                                    - Vietravel được miễn trừ chịu trách nhiệm nếu Hội viên không nhận được các ưu đãi và lợi ích từ chương trình do số điện thoại, email Hội viên có thay đổi mà không cập nhật vào hồ sơ hội viên hoặc do gửi ấn phẩm, thư tín qua đường bưu điện đến Hội viên bị thất lạc.
                                </p>
                                <p>
                                    - Mọi khiếu nại, yêu cầu bồi thường của Hội viên liên quan đến chương trình sẽ do Vietravel giải quyết. Sự giải quyết của Vietravel có giá trị áp dụng sau cùng.
                                </p>
                                <p>
                                    - Vietravel được phép sử dụng những thông tin của Hội viên trong các trường hợp: phục vụ cho việc nghiên cứu thị trường, lên kế hoạch kinh doanh nhằm phục vụ Hội viên tốt hơn của Vietravel hoặc đối tác chương trình, gửi phần thưởng hay các ấn phẩm đến Hội viên mà không cần sự đồng ý của Hội viên hoặc các trường hợp khác được Hội viên cho phép.
                                </p>
                                <p>
                                    - Hội viên được khuyến khích đọc kỹ và được xem như chấp nhận nội dung chương trình Khách hàng thân thiết VietravelPlus trước khi đăng ký trở thành Hội viên
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

if (isset($_POST['submit'])) {
    $user_name = $_POST['user_name'];
    $email = $_POST['email'];
    $birthday = $_POST['birthday'];
    $phone_number = $_POST['phone_number'];
    $gender = $_POST['gender'];
    $passwrod = md5($_POST['passwrod']);
    $passwrod2 = md5($_POST['passwrod2']);
    if ($_POST['passwrod'] != $_POST['passwrod2']) {
        $_SESSION['noti'] = "<p class='text-danger'>Mật khẩu nhập lại sai !!!</p>";
        header("location:register.php");
    } else {
        $str = rand();
        $code = md5($str);
        $sql = "INSERT INTO `customers`(`user_name`, `password`, `email`, `birthday`, `phone_number`, `gender`,`code`) 
            VALUES ('$user_name','$password','$email','$birthday','$phone_number','$gender','$code')";
        $res = mysqli_query($conn, $sql);

        if ($res) {
            require './sendEmai/Exception.php';
            require './sendEmai/PHPMailer.php';
            require './sendEmai/SMTP.php';

            // Instantiation and passing `true` enables exceptions
            $mail = new PHPMailer(true);

            try {
                //Server settings
                $mail->SMTPDebug = SMTP::DEBUG_SERVER; // Enable verbose debug output
                $mail->isSMTP(); // gửi mail SMTP
                $mail->Host = 'smtp.gmail.com'; // Set the SMTP server to send through
                $mail->SMTPAuth = true; // Enable SMTP authentication
                $mail->Username = 'congvip17a17@gamil.com'; // SMTP username
                $mail->Password = 'itgenusfjomtvalq'; // SMTP password
                $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` also accepted
                $mail->Port = 587; // TCP port to connect to
                $mail->CharSet = 'UTF-8';
                //Recipients
                $mail->setFrom('viethungtlu2k1@gmail.com', 'Danh bạ Đại học Thủy Lợi');

                $mail->addReplyTo('viethungtlu2k1@gmail.com', 'Đại học Thủy Lợi'); // nhận phải hồi từ người nhận
                //$email = 'viethung3052001@gmail.com';
                $mail->addAddress($email); // Add a recipient // dia chi ng nhan

                // Attachments
                // $mail->addAttachment('pdf/XTT/'.$data[11].'.pdf', $data[11].'_1.pdf'); // Add attachments
                //$mail->addAttachment('pdf/Giay_bao_mat_sau.pdf'); // Optional name

                // Content
                $mail->isHTML(true);   // Set email format to HTML
                $tieude = 'Kích hoạt tài khoản Danh Bạ';
                $mail->Subject = $tieude;

                $link = "http://localhost/webdattour/activeUser.php?email=" . $email . "&code=" . $code;
                // Mail body content 
                $bodyContent = '<p>Thân gửi <b>NVHung</b></h1>';
                $bodyContent .= '<p>Bạn vui lòng nhấp vào đường linh dưới đây để kích hoạt tài khoản</p>';
                $bodyContent .= '<a href=' . $link . '>Kích hoạt</a>';

                $mail->Body = $bodyContent;
                // // $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';
                if ($mail->send()) {
                    //echo 'Thư đã được gửi đi';
                    $_SESSION['noti'] = "<p class='text-success'>Đăng kí thành công! kiểm tra email để kích hoạt tài khoản.</p>";
                    header("location:register.php");
                } else {
                    // thư không được gửi đi
                    $_SESSION['noti'] = "<p class='text-danger'>Lỗi khi đăng kí</p>";
                    header("location:register.php");
                }
            } catch (Exception $e) {
                echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
            }
        } else {
            $_SESSION['noti'] = "<p class='text-danger'>Lỗi khi đăng kí</p>";
            header("location:register.php");
        }
    }
}

include("./templates/footer.php");
?>