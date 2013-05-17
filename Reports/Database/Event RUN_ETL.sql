DROP EVENT IF EXISTS RUN_ETL;

CREATE EVENT RUN_ETL
    ON SCHEDULE EVERY 1 DAY 
		STARTS '2013-06-01 03:00:00'
    DO
	  CALL	`reporting database`.`Transform_CALL_Procedures`;