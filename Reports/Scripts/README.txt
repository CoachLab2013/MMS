/bash	Contains additional batch scripts that are called by the mysql.bat file

/jar	Contains the jar files for generating reports. these need to be updated if the projects are recompiled

/sql	Contains the dump files for setting up the staging and reporting database. These need to be updated if any changes are made to the database

mysql.bat	Batch file for setting up the mysql staging and reporting database using the dumps in /sql
project scheduler.bat	Batch file for setting up automatic report generation uses the programs in /jar