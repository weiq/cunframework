@echo off
echo [INFO]  init schema/data.
echo [INFO] confirm has created db.
cd %~dp0
cd ../
echo [INFO] init schema.
call mvn db:schema

echo [INFO] init data.
call mvn db:data

pause