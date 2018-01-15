<?php

return array(
// set your paypal credential
// Below credentials are different for sandbox mode and live mode.
'client_id' => 'Ab32ZyKLC4db7uQ4CzvDIz5CNKinYAZYn7xYgwsXZlRHEjoJV66ehlL1emnY6urd8BkoHfzGRwGgbs-y',
'secret' => 'EJSR1ioNv5hn5WVrDlvqTRho5aYYqkTuj35Vib7-VvsZv-2it1EOHBDRPFe5avNXBecWGcUi8qdVZ5sR',
    
//'client_id' => 'AZnhSwCDmxti_z_BX6w_zsQlpcNhH66mWMIULP_qBhttzxajdBvKjozib5TGlAdCOs2rgNRPrrkroMSo',
//'secret' => 'EBcctSyxkI2Vmf2GEhFo5rjrqEhDeFc3wjbHmX1QaDF8QDpU3rhAoEg703o6jeQ7Sv0zpFvKsjr_veX6',

/**
* SDK configuration
*/
'settings' => array(
/**
* Available option 'sandbox' or 'live'
* Remember sandbox id and secret will be different than live
*/
'mode' => 'sandbox',

/**
* Specify the max request time in seconds
*/
'http.ConnectionTimeOut' => 600,

/**
* Whether want to log to a file
*/
'log.LogEnabled' => true,

/**
* Specify the file that want to write on
*/
'log.FileName' => storage_path() . '/logs/paypal.log',

/**
* Available option 'FINE', 'INFO', 'WARN' or 'ERROR'
*
* Logging is most verbose in the 'FINE' level and decreases as you
* proceed towards ERROR
*/
'log.LogLevel' => 'FINE'
),
);