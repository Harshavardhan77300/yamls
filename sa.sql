CREATE DATABASE 'savings_account_db';
USE `savings_account_db`;

-- Table for Deposits schema
DROP TABLE IF EXISTS `deposits`;
CREATE TABLE `deposits` (
  `savings_account_number` int NOT NULL,
  `transaction_type` varchar(50),
  `transaction_amount` decimal(15, 2),
  `transaction_description` varchar(255),
  `account_limit_breach_response` varchar(255),
  PRIMARY KEY (`savings_account_number`)
);

-- Table for Withdrawals schema
DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE `withdrawals` (
  `savings_account_number` int NOT NULL,
  `transaction_type` varchar(50),
  `transaction_amount` decimal(15, 2),
  `transaction_description` varchar(255),
  `account_limit_breach_response` varchar(255),
  PRIMARY KEY (`savings_account_number`)
);

-- Table for Transactions schema
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `savings_account_number` int NOT NULL,
  `transaction_reference` varchar(255) NOT NULL,
  `transaction_type` varchar(50),
  `account_limit_breach_response` varchar(255),
  `transaction_description` varchar(255),
  `transaction_amount` decimal(15, 2),
  `transaction_date` datetime,
  PRIMARY KEY (`savings_account_number`, `transaction_reference`)
);
