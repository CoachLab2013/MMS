"C:\Program Files\MySQL\MySQL Server 5.6\bin\mysql.exe" -u root -p -e "CREATE USER 'reportuser'@'%%' IDENTIFIED BY '6a7c9ea851ff4aa49119c3889dadeb07';GRANT SELECT ON 'reporting database'.* TO 'reportuser'@'%%';FLUSH PRIVILEGES;"
