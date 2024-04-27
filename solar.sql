CREATE DATABASE  IF NOT EXISTS `rest_db`
USE `rest_db`;

-- Table 1: Customer
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customerid` VARCHAR(255) NOT NULL,
  `siteid` VARCHAR(255),
  `deviceid` INT,
  `userid` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_userid` (`userid`),
  FOREIGN KEY (`deviceid`) REFERENCES `common_model_data`(`C_SunSpec_DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table 2: common_model_data
DROP TABLE IF EXISTS `common_model_data`;
CREATE TABLE `common_model_data` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `C_SunSpec_DID` INT NOT NULL,
  `C_SunSpec_ID` VARCHAR(255),
  `C_SunSpec_Length` INT,
  `C_Manufacturer` VARCHAR(255),
  `C_Model` VARCHAR(255),
  `C_Version` VARCHAR(255),
  `C_SerialNumber` VARCHAR(255),
  `C_DeviceAddress` VARCHAR(255),
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_C_SunSpec_DID` (`C_SunSpec_DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Table 3: get_device_status_data
DROP TABLE IF EXISTS `get_device_status_data`;
CREATE TABLE `get_device_status_data` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `C_SunSpec_DID` INT NOT NULL,
  `C_SunSpec_Length` INT,
  `I_AC_Current` FLOAT,
  `I_AC_CurrentA` FLOAT,
  `I_AC_CurrentB` FLOAT,
  `I_AC_CurrentC` FLOAT,
  `I_AC_Current_SF` FLOAT,
  `I_AC_VoltageAB` FLOAT,
  `I_AC_VoltageBC` FLOAT,
  `I_AC_VoltageCA` FLOAT,
  `I_AC_VoltageAN` FLOAT,
  `I_AC_VoltageBN` FLOAT,
  `I_AC_VoltageCN` FLOAT,
  `I_AC_Voltage_SF` FLOAT,
  `I_AC_Power` FLOAT,
  `I_AC_Power_SF` FLOAT,
  `I_AC_Frequency` FLOAT,
  `I_AC_Frequency_SF` FLOAT,
  `I_AC_VA` FLOAT,
  `I_AC_VA_SF` FLOAT,
  `I_AC_VAR` FLOAT,
  `I_AC_VAR_SF` FLOAT,
  `I_AC_PF` FLOAT,
  `I_AC_PF_SF` FLOAT,
  `I_AC_Energy_WH` FLOAT,
  `I_AC_Energy_WH_SF` FLOAT,
  `I_DC_Current` FLOAT,
  `I_DC_Current_SF` FLOAT,
  `I_DC_Voltage` FLOAT,
  `I_DC_Voltage_SF` FLOAT,
  `I_DC_Power` FLOAT,
  `I_DC_Power_SF` FLOAT,
  `I_Temp_Sink` FLOAT,
  `I_Temp_SF` FLOAT,
  `I_Status` VARCHAR(255),
  `I_Status_Vendor` VARCHAR(255),
  `Time_stamp` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`C_SunSpec_DID`) REFERENCES `common_model_data`(`C_SunSpec_DID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
