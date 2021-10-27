<?php
    require_once("../config/constants.php");
    if(isset($_POST["mode"])){
        $mode = $_POST["mode"];
        if($mode == "order"){
            $cus_id = 1;
            $tour_id = $_POST["tour_id"];
            $people = $_POST["people"];
            $date = $_POST["date_start"];
            $sql = "insert into orders set customer_id = ?, tour_id = ?, start_time = ?, people = ?, validation = ?, payment = ?, booking_id = ?";
            $result = simpleQuery($sql, 0, [$cus_id, $tour_id, $date, $people, 0, 0, 1]);
            if($result){
                echo "ok";
            }else{
                echo "no";
            }
        }
    }else{
        echo "no";
    }
?>