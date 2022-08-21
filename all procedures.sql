use ims;
USE IMS;
Truncate table com_performance;
DROP PROCEDURE IF EXISTS com_return_report;
DELIMITER //
CREATE PROCEDURE com_return_report ()

BEGIN
   DECLARE initial_year int;
   DECLARE current_year int;
   DECLARE com_increment int;
   DECLARE year_increment int;
   DECLARE no_of_years INT;
   DECLARE com_count int;
   DECLARE com_year_count int;
   DECLARE com_year_price decimal(9,2);
   DECLARE current_year_price decimal(9,2);
   DECLARE rate_of_return decimal(9,2);
   
	SET no_of_years=1;
    -- SET current_year = year(now());
   SET com_increment=1;
   SET com_count=0;
   SET com_year_count=0;
		Select (count(*)) from commodity into com_count;
		WHILE com_increment <= com_count DO
			SET year_increment = 1;
			select com_Price from com_price where com_ID = com_increment order by com_Year desc 
            limit 1 into current_year_price;
            select com_Year from com_price where com_ID = com_increment order by com_Year desc 
            limit 1 into current_year;
            select count(*) from com_price where com_ID = com_increment into com_year_count;
			WHILE year_increment < com_year_count DO
				select com_Price from com_price where com_year=current_year - year_increment and 
                com_ID=com_increment into com_year_price;
                SET rate_of_return = round(((current_year_price-com_year_price)/com_year_price)*100,2);
                INSERT INTO com_performance (Investment_ID, com_ID, No_Of_Years, Rate_Of_Return) 
				 select i.Investment_ID, s.com_ID, year_increment, rate_of_return from 
                 investments i, 
				 commodity s
				 where s.Investment_ID=i.Investment_ID and s.com_ID = com_increment;
                 SET year_increment = year_increment+1;
			END WHILE;
            SET com_increment = com_increment+1;
		END WHILE;
				
END //


DELIMITER ;

CALL com_return_report;


USE IMS;
Truncate table etf_performance;
DROP PROCEDURE IF EXISTS etf_return_report;
DELIMITER //
CREATE PROCEDURE etf_return_report ()

BEGIN
   DECLARE initial_year int;
   DECLARE current_year int;
   DECLARE etf_increment int;
   DECLARE year_increment int;
   DECLARE no_of_years INT;
   DECLARE etf_count int;
   DECLARE etf_year_count int;
   DECLARE etf_year_price decimal(9,2);
   DECLARE current_year_price decimal(9,2);
   DECLARE rate_of_return decimal(9,2);
   
	SET no_of_years=1;
    -- SET current_year = year(now());
   SET etf_increment=1;
   SET etf_count=0;
   SET etf_year_count=0;
		Select (count(*)) from etf into etf_count;
		WHILE etf_increment <= etf_count DO
			SET year_increment = 1;
			select etf_Price from etf_price where etf_ID = etf_increment order by etf_Year desc 
            limit 1 into current_year_price;
            select etf_Year from etf_price where etf_ID = etf_increment order by etf_Year desc 
            limit 1 into current_year;
            select count(*) from etf_price where etf_ID = etf_increment into etf_year_count;
			WHILE year_increment < etf_year_count DO
				select etf_Price from etf_price where etf_year=current_year - year_increment and 
                etf_ID=etf_increment into etf_year_price;
                SET rate_of_return = round(((current_year_price-etf_year_price)/etf_year_price)*100,2);
                INSERT INTO etf_performance (Investment_ID, etf_ID, No_Of_Years, Rate_Of_Return) 
				 select i.Investment_ID, s.etf_ID, year_increment, rate_of_return from 
                 investments i, 
				 etf s
				 where s.Investment_ID=i.Investment_ID and s.etf_ID = etf_increment;
                 SET year_increment = year_increment+1;
			END WHILE;
            SET etf_increment = etf_increment+1;
		END WHILE;
				
END //


DELIMITER ;

CALL etf_return_report;


USE IMS;
Truncate table mf_performance;
DROP PROCEDURE IF EXISTS mf_return_report;
DELIMITER //
CREATE PROCEDURE mf_return_report ()

BEGIN
   DECLARE initial_year int;
   DECLARE current_year int;
   DECLARE mf_increment int;
   DECLARE year_increment int;
   DECLARE no_of_years INT;
   DECLARE mf_count int;
   DECLARE mf_year_count int;
   DECLARE mf_year_price decimal(9,2);
   DECLARE current_year_price decimal(9,2);
   DECLARE rate_of_return decimal(9,2);
   
	SET no_of_years=1;
    -- SET current_year = year(now());
   SET mf_increment=1;
   SET mf_count=0;
   SET mf_year_count=0;
		Select (count(*)) from mutual_fund into mf_count;
		WHILE mf_increment <= mf_count DO
			SET year_increment = 1;
			select mf_Price from mf_price where mf_ID = mf_increment order by mf_Year desc 
            limit 1 into current_year_price;
            select mf_Year from mf_price where mf_ID = mf_increment order by mf_Year desc 
            limit 1 into current_year;
            select count(*) from mf_price where mf_ID = mf_increment into mf_year_count;
			WHILE year_increment < mf_year_count DO
				select mf_Price from mf_price where mf_year=current_year - year_increment and 
                mf_ID=mf_increment into mf_year_price;
                SET rate_of_return = round(((current_year_price-mf_year_price)/mf_year_price)*100,2);
                INSERT INTO mf_performance (Investment_ID, mf_ID, No_Of_Years, Rate_Of_Return) 
				 select i.Investment_ID, s.mf_ID, year_increment, rate_of_return from 
                 investments i, 
				 mutual_fund s
				 where s.Investment_ID=i.Investment_ID and s.mf_ID = mf_increment;
                 SET year_increment = year_increment+1;
			END WHILE;
            SET mf_increment = mf_increment+1;
		END WHILE;
				
END //


DELIMITER ;

CALL mf_return_report;

USE IMS;
Truncate table mf_performance;
DROP PROCEDURE IF EXISTS mf_return_report;
DELIMITER //
CREATE PROCEDURE mf_return_report ()

BEGIN
   DECLARE initial_year int;
   DECLARE current_year int;
   DECLARE mf_increment int;
   DECLARE year_increment int;
   DECLARE no_of_years INT;
   DECLARE mf_count int;
   DECLARE mf_year_count int;
   DECLARE mf_year_price decimal(9,2);
   DECLARE current_year_price decimal(9,2);
   DECLARE rate_of_return decimal(9,2);
   
	SET no_of_years=1;
    -- SET current_year = year(now());
   SET mf_increment=1;
   SET mf_count=0;
   SET mf_year_count=0;
		Select (count(*)) from mutual_fund into mf_count;
		WHILE mf_increment <= mf_count DO
			SET year_increment = 1;
			select mf_Price from mf_price where mf_ID = mf_increment order by mf_Year desc 
            limit 1 into current_year_price;
            select mf_Year from mf_price where mf_ID = mf_increment order by mf_Year desc 
            limit 1 into current_year;
            select count(*) from mf_price where mf_ID = mf_increment into mf_year_count;
			WHILE year_increment < mf_year_count DO
				select mf_Price from mf_price where mf_year=current_year - year_increment and 
                mf_ID=mf_increment into mf_year_price;
                SET rate_of_return = round(((current_year_price-mf_year_price)/mf_year_price)*100,2);
                INSERT INTO mf_performance (Investment_ID, mf_ID, No_Of_Years, Rate_Of_Return) 
				 select i.Investment_ID, s.mf_ID, year_increment, rate_of_return from 
                 investments i, 
				 mutual_fund s
				 where s.Investment_ID=i.Investment_ID and s.mf_ID = mf_increment;
                 SET year_increment = year_increment+1;
			END WHILE;
            SET mf_increment = mf_increment+1;
		END WHILE;
				
END //


DELIMITER ;

CALL mf_return_report;

USE IMS;
Truncate table stock_performance;
DROP PROCEDURE IF EXISTS stock_return_report;
DELIMITER //
CREATE PROCEDURE stock_return_report ()

BEGIN
   DECLARE initial_year int;
   DECLARE current_year int;
   DECLARE stock_increment int;
   DECLARE year_increment int;
   DECLARE no_of_years INT;
   DECLARE stock_count int;
   DECLARE stock_year_count int;
   DECLARE stock_year_price decimal(9,2);
   DECLARE current_year_price decimal(9,2);
   DECLARE rate_of_return decimal(9,2);
   
	SET no_of_years=1;
    -- SET current_year = year(now());
   SET stock_increment=1;
   SET stock_count=0;
   SET stock_year_count=0;
		Select (count(*)) from stock into stock_count;
		WHILE stock_increment <= stock_count DO
			SET year_increment = 1;
			select Stock_Price from stock_price where Stock_ID = stock_increment order by Stock_Year desc 
            limit 1 into current_year_price;
            select Stock_Year from stock_price where Stock_ID = stock_increment order by Stock_Year desc 
            limit 1 into current_year;
            select count(*) from stock_price where Stock_ID = stock_increment into stock_year_count;
			WHILE year_increment < stock_year_count DO
				select Stock_Price from stock_price where Stock_year=current_year - year_increment and 
                Stock_ID=stock_increment into stock_year_price;
                SET rate_of_return = round(((current_year_price-stock_year_price)/stock_year_price)*100,2);
                INSERT INTO stock_performance (Investment_ID, Stock_ID, No_Of_Years, Rate_Of_Return) 
				 select i.Investment_ID, s.Stock_ID, year_increment, rate_of_return from 
                 investments i, 
				 stock s
				 where s.Investment_ID=i.Investment_ID and s.Stock_ID = stock_increment;
                 SET year_increment = year_increment+1;
			END WHILE;
            SET stock_increment = stock_increment+1;
		END WHILE;
				
END //


DELIMITER ;

CALL stock_return_report;


DELIMITER //
drop procedure if exists get_Stock;
CREATE PROCEDURE get_Stock(
	IN ROR_upper DECIMAL(9,2),
    IN ROR_lower DECIMAL(9,2),
    IN years INT
)
BEGIN
	select s.Name from stock_performance p inner join stock s on
	p.Stock_ID = s.Stock_ID where p.Rate_Of_Return between ROR_lower and ROR_upper and No_Of_Years = years;
END //

DELIMITER ;


DELIMITER //
drop procedure if exists get_re;
CREATE PROCEDURE get_re(
	IN ROR_upper DECIMAL(9,2),
    IN ROR_lower DECIMAL(9,2),
    IN years INT
)
BEGIN
	select s.Name from re_performance p inner join real_estate s on
	p.re_ID = s.re_ID where p.Rate_Of_Return between ROR_lower and ROR_upper and No_Of_Years = years;
END //

DELIMITER ;


DELIMITER //
drop procedure if exists get_mf;
CREATE PROCEDURE get_mf(
	IN ROR_upper DECIMAL(9,2),
    IN ROR_lower DECIMAL(9,2),
    IN years INT
)
BEGIN
	select s.Name from mf_performance p inner join mutual_fund s on
	p.mf_ID = s.mf_ID where p.Rate_Of_Return between ROR_lower and ROR_upper and No_Of_Years = years;
END //

DELIMITER ;

DELIMITER //
drop procedure if exists get_etf;
CREATE PROCEDURE get_etf(
	IN ROR_upper DECIMAL(9,2),
    IN ROR_lower DECIMAL(9,2),
    IN years INT
)
BEGIN
	select s.Name from etf_performance p inner join etf s on
	p.etf_ID = s.etf_ID where p.Rate_Of_Return between ROR_lower and ROR_upper and No_Of_Years = years;
END //

DELIMITER ;


DELIMITER //
drop procedure if exists get_com;
CREATE PROCEDURE get_com(
	IN ROR_upper DECIMAL(9,2),
    IN ROR_lower DECIMAL(9,2),
    IN years INT
)
BEGIN
	select s.Name from com_performance p inner join commodity s on
	p.com_ID = s.com_ID where p.Rate_Of_Return between ROR_lower and ROR_upper and No_Of_Years = years;
END //

DELIMITER ;



