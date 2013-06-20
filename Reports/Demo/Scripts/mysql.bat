@ECHO off

ECHO Setting up MySQL
	
	SET user=root
	ECHO %user%
	
	ECHO Creating Report User, Enter Database Admin Password
	CALL "./bash/mysql user.bat" %user%
	
	ECHO Creating Staging Database, Enter Database Admin Password
	CALL "./bash/mysql load staging.bat" %user%
	
	ECHO Creating Reporting Database, Enter Database Admin Password
	CALL "./bash/mysql load reporting.bat" %user%
	
	ECHO Scheduling ETL Processes, Enter Database Admin Password
	CALL "./bash/mysql scheduler.bat" %user%
	
ECHO Setup Complete
PAUSE
