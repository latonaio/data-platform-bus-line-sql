CREATE TABLE `data_platform_bus_line_dpt_dst_bus_stop_data`
(
  `BusLine`                      int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DepartureBusStop`             int(16) NOT NULL,
  `DestinationBusStop`           int(16) NOT NULL,
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

    PRIMARY KEY (`BusLine`, `ExpressType`, `DepartureBusStop`, `DestinationBusStop`),

    CONSTRAINT `DPFMBusLineDptDstBusStopData_fk` FOREIGN KEY (`BusLine`) REFERENCES `data_platform_bus_line_header_data` (`BusLine`),
    CONSTRAINT `DPFMBusLineDptDstBusStopDataExpressType_fk` FOREIGN KEY (`BusLine`, `ExpressType`) REFERENCES `data_platform_bus_line_express_type_data` (`BusLine`, `ExpressType`),
    CONSTRAINT `DPFMBusLineDptDstBusStopDataDptBusStop_fk` FOREIGN KEY (`BusLine`, `ExpressType`, `DepartureBusStop`) REFERENCES `data_platform_bus_line_departure_bus_stop_data` (`BusLine`, `ExpressType`, `DepartureBusStop`),
    CONSTRAINT `DPFMBusLineDptDstBusStopDataDstBusStop_fk` FOREIGN KEY (`BusLine`, `ExpressType`, `DestinationBusStop`) REFERENCES `data_platform_bus_line_destination_bus_stop_data` (`BusLine`, `ExpressType`, `DestinationBusStop`),
    CONSTRAINT `DPFMBusLineDptDstBusStopDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusLineDptDstBusStopDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
