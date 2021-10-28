<?php
    require_once("../config/constants.php");
    if(isset($_GET["tours"]) && $_GET["tour_id"] != null){
        $id = $_GET["tour_id"];
        $sql = "select * from orders where tour_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa tour này vì đã có người đặt";
        }else{
            $sql = "delete from tours where tour_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa tour thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa tour!";
            }
        }
        header("location: index.php");
    }else if(isset($_GET["customers"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from orders where customer_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa khách này vì đây là khách vip";
        }else{
            $sql = "delete from customres where customer_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa khách thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa khách!";
            }
        }
        header("location: QLND.php");
    }
    else if(isset($_GET["hotels"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from tours where hotel_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa khách sạn này vì nó đã được dùng";
        }else{
            $sql = "delete from hotels where hotel_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa khách sạn thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa khách sạn này!";
            }
        }
        header("location: QLKS.php");
    }
    else if(isset($_GET["restaurants"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from tours where res_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa nhà hàng này vì nó đã được dùng";
        }else{
            $sql = "delete from restaurants where res_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa nhà hàng thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa nhà hàng!";
            }
        }
        header("location: QLNH.php");
    }
    else if(isset($_GET["cities"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from tours where city_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa thành phố này vì nó đã được dùng";
        }else{
            $sql = "delete from cities where city_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa thành phố thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa thành phố!";
            }
        }
        header("location: QLTP.php");
    }
    else if(isset($_GET["tourguides"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from tours where tour_guide_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa hướng dẫn viên này vì nó đã được dùng";
        }else{
            $sql = "delete from tourguides where tour_guide_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa hướng dẫn viên thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa hướng dẫn viên!";
            }
        }
        header("location: QLHDVien.php");
    }
    else if(isset($_GET["tourtypes"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from tours where tour_type_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa loại tour này vì nó đã được dùng";
        }else{
            $sql = "delete from tourtypes where tour_type_id = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa loại tour thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa loại tour!";
            }
        }
        header("location: QLLoaiTour.php");
    }
    else if(isset($_GET["ranks"]) && $_GET["id"] != null){
        $id = $_GET["id"];
        $sql = "select * from tours where tour_rank_id = ?";
        $orders = simpleQuery($sql, 1, [$id]);
        if(count($orders) > 0){
            $_SESSION["alert"] = "Không thể xóa rank này vì nó đã được dùng";
        }else{
            $sql = "delete from ranks where rank_d = ?";
            $result = simpleQuery($sql, 0, [$id]);
            if($result){
                $_SESSION["alert"] = "Xóa rank thành công!";
            }else{
                $_SESSION["alert"] = "Không thể xóa rank!";
            }
        }
        header("location: QLCapTour.php");
    }
    else{
        header("location: index.php");
    }

?>