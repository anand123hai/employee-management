@echo off
echo "Stopping Apache server...""
net stop Tomcat9

echo "Waiting for 5 seconds for apache server to stop...""
ping 192.0.2.2 -n 1 -w 5000 > nul

echo "Stopping MySQL server..."
net stop MySQL80

echo "Waiting for 5 seconds"
ping 192.0.2.2 -n 1 -w 5000 > nul

echo "Deleting pre-deployed apps from apache server"
del C:\Softwares\apache-tomcat-9.0.36-windows-x64\apache-tomcat-9.0.36\webapps\employee-management*.war

echo "Waiting for 5 seconds for delete to complete"
ping 192.0.2.2 -n 1 -w 5000 > nul

echo "Deploying war file to Apache server"
copy "C:\Program Files (x86)\Jenkins\workspace\(Deploy) - DEV - Employee Management\target\dependency\employee-management-*.war" "C:\Softwares\apache-tomcat-9.0.36-windows-x64\apache-tomcat-9.0.36\webapps\"

echo "Waiting for 5 seconds for file to copy to apache webapps directory"
ping 192.0.2.2 -n 1 -w 5000 > nul

echo "Starting Apache server..."
net start Tomcat9

echo "Waiting for 5 seconds for Apache server to start"
ping 192.0.2.2 -n 1 -w 5000 > nul

echo "Starting MySQL server..."
net start MySQL80

echo "Waiting for 5 seconds for MySQL server to start"
ping 192.0.2.2 -n 1 -w 5000 > nul

echo "All servers started"
exit 0