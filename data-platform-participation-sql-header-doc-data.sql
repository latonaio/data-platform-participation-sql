CREATE TABLE `data_platform_participation_header_doc_data`
(
  `Participation`                  int(20) NOT NULL,
  `DocType`                        varchar(100) NOT NULL,
  `DocVersionID`                   int(4) NOT NULL,
  `DocID`                          varchar(100) NOT NULL,
  `FileExtension`                  varchar(20) NOT NULL,
  `FileName`                       varchar(200) DEFAULT NULL,
  `FilePath`                       varchar(1000) DEFAULT NULL,
  `DocIssuerBusinessPartner`       int(12) DEFAULT NULL,
  
    PRIMARY KEY (`Participation`, `DocType`, `DocVersionID`, `DocID`),
    
    CONSTRAINT `DPFMParticipationHeaderDocData_fk` FOREIGN KEY (`Participation`) REFERENCES `data_platform_participation_header_data` (`Participation`),
    CONSTRAINT `DPFMParticipationHeaderDocDataDocType_fk` FOREIGN KEY (`DocType`) REFERENCES `data_platform_doc_type_doc_type_data` (`DocType`),
    CONSTRAINT `DPFMParticipationHeaderDocDataDocIssuerBP_fk` FOREIGN KEY (`DocIssuerBusinessPartner`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
