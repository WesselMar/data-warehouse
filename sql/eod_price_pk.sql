ALTER TABLE `DW`.`eod_price_archive` 
CHANGE COLUMN `tradeday` `tradeday` DATETIME NOT NULL ,
CHANGE COLUMN `ticker` `ticker` TEXT NOT NULL ,
CHANGE COLUMN `modified` `modified` DATETIME NOT NULL ,
ADD PRIMARY KEY (`tradeday`, `ticker`(100), `modified`);
;