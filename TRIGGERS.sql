use ims;
drop trigger if exists Stock_TR_AI;
drop trigger if exists Stock_TR_AU;
drop trigger if exists Stock_price_TR_AI;
drop trigger if exists Stock_price_TR_AU;

CREATE TRIGGER Stock_TR_AI AFTER INSERT
ON stock
FOR EACH ROW
CALL ims.stock_return_report;

CREATE TRIGGER Stock_price_TR_AI AFTER INSERT
ON stock_price
FOR EACH ROW
CALL ims.stock_return_report;

CREATE TRIGGER Stock_TR_AU AFTER UPDATE
ON Stock
FOR EACH ROW
CALL ims.stock_return_report;

CREATE TRIGGER Stock_price_TR_AU AFTER UPDATE
ON stock_price
FOR EACH ROW
CALL ims.stock_return_report;
