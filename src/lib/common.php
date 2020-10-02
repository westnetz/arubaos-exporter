<?php
function sendGraphite($field, $value) {
        echo "arubaos." . $field . " " . $value . "\n";
}

function get_snmp($oid, $type = "Gauge32") {
        global $ip, $community;

        return $value = sanatize_snmp($type, snmp2_get($ip, $community, $oid));
}

function sanatize_snmp($type, $value) {
        switch ($type) {
                case "Gauge32":
                        $value = str_replace("Gauge32: ", "", $value);
                        break;

                case "STRING":
                        $value = str_replace("\"", "", str_replace("STRING: ", "", $value));
                        break;

                case "INTEGER":
                        $value = str_replace("INTEGER: ", "", $value);
                        break;

                case "Counter32":
                        $value = str_replace("Counter32: ", "", $value);
                        break;

                case "Counter64":
                        $value = str_replace("Counter64: ", "", $value);
                        break;
        }
        return $value;
}

?>
