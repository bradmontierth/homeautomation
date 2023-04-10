CREATE TABLE `DeviceMonitoring` 
( `ID` int(11) NOT NULL AUTO_INCREMENT
, `DeviceNM` varchar(255) DEFAULT NULL
, `StatNM` varchar(255) DEFAULT NULL
, `StatNBR` varchar(255) DEFAULT NULL
, `Created` timestamp NOT NULL DEFAULT current_timestamp()
, PRIMARY KEY (`ID`), KEY `DeviceMonitoring_created_index` (`Created`) 
) ENGINE=InnoDB AUTO_INCREMENT=3445320 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci

CREATE TABLE `BlueIris` 
( `Level` int(11) DEFAULT NULL
, `DateDTS` varchar(255) NOT NULL
, `Object` varchar(255) DEFAULT NULL
, `Message` varchar(255) NOT NULL
, PRIMARY KEY (`Message`,`DateDTS`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci
 
 CREATE TABLE `BlueIrisMetrics` 
 ( `EventType` varchar(255) DEFAULT NULL
 , `PercentMatch` int(11) DEFAULT NULL
 , `ProcessTimeMS` int(11) DEFAULT NULL
 , `Message` varchar(255) NOT NULL
 , `DateDTS` datetime NOT NULL
 , `Object` varchar(255) DEFAULT NULL
 , `Level` varchar(10) DEFAULT NULL
 , PRIMARY KEY (`Message`,`DateDTS`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci