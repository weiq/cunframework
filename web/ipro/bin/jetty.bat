@echo off
echo [INFO]  jetty starting
cd %~dp0
cd ../

call mvn clean jetty:run  -Dmaven.test.skip=true  

cd ../bin
pause