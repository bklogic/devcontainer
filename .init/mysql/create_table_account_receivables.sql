use classicmodels;
drop table if exists accountReceivables;
create table accountReceivables (
    receivableNumber int AUTO_INCREMENT,
    receivableDate date,
    customerNumber int,
    receivableAmount double,
    PRIMARY KEY (receivableNumber),
    UNIQUE KEY (receivableDate, customerNumber)
)
;
drop table if exists accountReceivableDetails;
create table accountReceivableDetails (
    receivableNumber int,
    orderNumber int,
    orderAmount double,
    PRIMARY KEY (receivableNumber, orderNumber)
)
;