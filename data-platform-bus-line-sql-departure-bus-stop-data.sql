CREATE TABLE `data_platform_bus_line_departure_bus_stop_data`
(
  `BusLine`                      int(16) NOT NULL,
  `ExpressType`                  varchar(4) NOT NULL,
  `DepartureBusStop`             int(16) NOT NULL,
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

    PRIMARY KEY (`BusLine`, `ExpressType`, `DepartureBusStop`),

    CONSTRAINT `DPFMBusLineDepartureBusStopData_fk` FOREIGN KEY (`BusLine`) REFERENCES `data_platform_bus_line_header_data` (`BusLine`),
    CONSTRAINT `DPFMBusLineDepartureBusStopDataExpressType_fk` FOREIGN KEY (`BusLine`, `ExpressType`) REFERENCES `data_platform_bus_line_express_type_data` (`BusLine`, `ExpressType`),
    CONSTRAINT `DPFMBusLineDepartureBusStopDataDptBusStop_fk` FOREIGN KEY (`BusLine`, `BusLineBusStopID`, `DepartureBusStop`) REFERENCES `data_platform_bus_line_bus_stop_data` (`BusLine`, `BusLineBusStopID`, `BusStop`),
    CONSTRAINT `DPFMBusLineDepartureBusStopDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusLineDepartureBusStopDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
