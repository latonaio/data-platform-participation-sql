CREATE TABLE `data_platform_participation_header_data`
(
  `Participation`                         int(20) NOT NULL,
  `ParticipationDate`                     date NOT NULL,
  `ParticipationTime`                     time NOT NULL,
  `Participator`                          int(12) NOT NULL,
  `ParticipationObjectType`               varchar(40) NOT NULL,
  `ParticipationObject`                   int(16) NOT NULL,
  `CreationDate`                          date NOT NULL,
  `CreationTime`                          time NOT NULL,
  `IsCancelled`                           tinyint(1) DEFAULT NULL,

    PRIMARY KEY (`Participation`),

    CONSTRAINT `DPFMParticipationHeaderDataParticipator_fk` FOREIGN KEY (`Participator`) REFERENCES `data_platform_business_partner_general_data` (`BusinessPartner`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
