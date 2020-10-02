<?php
error_reporting(E_ALL ^ E_NOTICE);

header('Content-Type: text/plain');

// controller name => IP address
$controllers = array (
        $_GET['target'] => $_GET['target'],
);

// snmp community
$community = $_GET['community'];

$dot11_types = array (
        "INTEGER: 1" => "5ghz",
        "INTEGER: 2" => "2ghz",
        "INTEGER: 3" => "2ghz",
        "INTEGER: 4" => "dualband"
);
$snmp_base = 16;        // use 11 if your SNMP resolves OIDs

?>
