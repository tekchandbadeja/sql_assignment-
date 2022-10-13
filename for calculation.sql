CREATE DATABASE calculation;
USE calculation;
CREATE TABLE equity_cal (
symbol VARCHAR(55) PRIMARY KEY,
company_name VARCHAR (55) ,
series VARCHAR (10),
date_of_listing DATE,
paid_up_value INT,
market_lot INT,
isin_num VARCHAR (25),
face_value INT
);
SELECT * FROM equity_cal;
CREATE TABLE bhav_cal (
symbol_name VARCHAR(55) PRIMARY KEY,
open_ FLOAT NOT NULL,
 low_ FLOAT NOT NULL,
 high_ FLOAT NOT NULL,
 close_  FLOAT NOT NULL ,
 last_ FLOAT NOT NULL,
 total_rdqt VARCHAR (15) NOT NULL,
 total_rdval  VARCHAR (25) NOT NULL ,
 total_trade VARCHAR (25),
 series VARCHAR (15) NOT NULL,
 curr_date DATE ,
 ISIN_num VARCHAR (25),
  FOREIGN KEY (symbol_name) REFERENCES  equity_cal (symbol )
);
SELECT * FROM equity_cal;

SELECT * FROM bhav_cal;
DESC bhav_cal;
SELECT SUM(open_) FROM bhav_cal;
SELECT SUM(close_) FROM bhav_cal;
 SELECT SUM(open_) FROM bhav_cal
 WHERE date_of_listing> Current_DATE-interval 25 DAY
    ;
