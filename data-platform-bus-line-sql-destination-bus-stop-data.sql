CREATE TABLE `data_platform_bus_line_destination_bus_stop_data`
(
  `BusLine`                      int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DestinationBusStop`           int(16) NOT NULL,
  `BusLineBusStopID`             int(4) NOT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusLine`, `ExpressType`, `DestinationBusStop`),

    CONSTRAINT `DPFMBusLineDestinationBusStopData_fk` FOREIGN KEY (`BusLine`) REFERENCES `data_platform_bus_line_header_data` (`BusLine`),
    CONSTRAINT `DPFMBusLineDestinationBusStopDataExpressType_fk` FOREIGN KEY (`BusLine`, `ExpressType`) REFERENCES `data_platform_bus_line_express_type_data` (`BusLine`, `ExpressType`),
    CONSTRAINT `DPFMBusLineDestinationBusStopDataDstBusStop_fk` FOREIGN KEY (`BusLine`, `BusLineBusStopID`, `DestinationBusStop`) REFERENCES `data_platform_bus_line_bus_stop_data` (`BusLine`, `BusLineBusStopID`, `BusStop`),
    CONSTRAINT `DPFMBusLineDestinationBusStopDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusLineDestinationBusStopDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
