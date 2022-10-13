CREATE DATABASE nse_data;
USE nse_data;
CREATE TABLE euity_detail (
 symbol_name VARCHAR (25) PRIMARY KEY,
 company_name VARCHAR (45)  UNIQUE,
 series_type VARCHAR (15) NOT NULL,
 date_of_list DATE ,
 paid_up_value INT ,
 market_lot INT ,
 ISIN_num VARCHAR (25),
 face_value INT );
 SELECT  *  FROM euity_detail  ;
 CREATE TABLE bhavcopy (
 company_name VARCHAR (25) ,
 series VARCHAR (15) NOT NULL,
 curr_date DATE ,
 ISIN_num VARCHAR (25) PRIMARY KEY ,
 FOREIGN KEY (company_name) REFERENCES euity_detail (symbol_name)
 
 );
 SELECT  *  FROM  bhavcopy;
 CREATE TABLE total_trade (
 company VARCHAR (25) ,
 total_rdqt VARCHAR (15) NOT NULL,
 total_rdval  VARCHAR (25) NOT NULL ,
 total_trade VARCHAR (25) PRIMARY KEY ,
 FOREIGN KEY (company) REFERENCES bhavcopy (company_name)
 
 );
  SELECT  *  FROM  total_trade;
  CREATE TABLE open_close (
 company_name_ VARCHAR (25) PRIMARY KEY,
 open_ FLOAT NOT NULL,
 low_ FLOAT NOT NULL,
 high_ FLOAT NOT NULL,
 close_  FLOAT NOT NULL ,
 last_ FLOAT NOT NULL,
 FOREIGN KEY (company_name_) REFERENCES bhavcopy (company_name)
 
 );
  SELECT  *  FROM open_close ;
  
 