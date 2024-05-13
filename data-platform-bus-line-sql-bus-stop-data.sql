CREATE TABLE `data_platform_bus_line_bus_stop_data`
(
  `BusLine`                      int(16) NOT NULL,
  `BusLineBusStopID`             int(4) NOT NULL,
  `BusStop`                      int(16) NOT NULL,
  `OrderNumberOnOutboundLine`    int(4) NOT NULL,
  `ValidityStartDate`            date NOT NULL,
  `ValidityEndDate`              date NOT NULL,
  `Description`                  varchar(60) NOT NULL,
  `LongText`                     varchar(1000) NOT NULL,
  `Introduction`                 varchar(200) DEFAULT NULL,
  `Project`                      int(16) DEFAULT NULL,
  `WBSElement`                   int(8) DEFAULT NULL,
  `Tag1`                         varchar(40) DEFAULT NULL,
  `Tag2`                         varchar(40) DEFAULT NULL,
  `Tag3`                         varchar(40) DEFAULT NULL,
  `Tag4`                         varchar(40) DEFAULT NULL,
  `CreationDate`                 date NOT NULL,
  `CreationTime`                 time NOT NULL,
  `LastChangeDate`               date NOT NULL,
  `LastChangeTime`               time NOT NULL,
  `CreateUser`                   int(12) NOT NULL,
  `LastChangeUser`               int(12) NOT NULL,
  `IsReleased`                   tinyint(1) DEFAULT NULL,
  `IsMarkedForDeletion`          tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`BusLine`, `BusLineBusStopID`, `BusStop`),

    CONSTRAINT `DPFMBusLineBusStopData_fk` FOREIGN KEY (`BusLine`) REFERENCES `data_platform_bus_line_header_data` (`BusLine`),
    CONSTRAINT `DPFMBusLineBusStopDataBusStop_fk` FOREIGN KEY (`BusStop`) REFERENCES `data_platform_bus_stop_header_data` (`BusStop`),
    CONSTRAINT `DPFMBusLineBusStopDataProject_fk` FOREIGN KEY (`Project`) REFERENCES `data_platform_project_project_data` (`Project`),
    CONSTRAINT `DPFMBusLineBusStopDataWBSElement_fk` FOREIGN KEY (`Project`, `WBSElement`) REFERENCES `data_platform_project_wbs_element_data` (`Project`, `WBSElement`),
    CONSTRAINT `DPFMBusLineBusStopDataCreateUser_fk` FOREIGN KEY (`CreateUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`),
    CONSTRAINT `DPFMBusLineBusStopDataLastChangeUser_fk` FOREIGN KEY (`LastChangeUser`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
