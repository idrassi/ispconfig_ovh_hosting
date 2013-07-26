ispconfig_ovh_hosting
=====================

A modified ISPConfig3 installation that supports putting email and websites in /home instead of /var.
This is useful when hosting ISPConfig 3 in a dedicated server where the / partition is small and /home is much bigger.
This situation is encountered for example when using dedicated servers from the french hosting company OVH.

This modified ISPConfig3 setup also sets HTTPS port to 8443 instead of 443
This useful when doing port sharing between OpenVPN and Apache:
  - In this case, OpenVPN will be listening to port 443 and it will forward non-VPN connections to the Apache instance running onn port 8443.
  
I have also corrected an annoying bug in generated SSL configuration for websites where SSLCACertificateFile was wrongly used instead of SSLCertificateChainFile.

IMPORTANT :
Before installing this version, you must : 
  - modify the home of the www-data user on the system from /var/www to /home/www. 
  - modify Apache configuration to use /home/www instead of /var/www.
  - if you have suExec, install apache2-suexec-custom (apt-get install apache2-suexec-custom) and modify /etc/apache2/suexec/www-data to replace /var/www by /home/www
  - if you have installed suPhp, modify the file /etc/suphp/suphp.conf to replace /var/www by /home/www
