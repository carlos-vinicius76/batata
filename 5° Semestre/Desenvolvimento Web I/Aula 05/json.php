<?php

    $json = '{"a":1,"b":2,"c":3,"d":4,"e":5}';

    $obj = json_decode($json);

    print_r($obj);

    $obj->d=255;

    $json = json_encode($obj);

    print_r($json);

?>