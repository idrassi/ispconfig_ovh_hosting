ispconfig_ovh_hosting
=====================

A modified ISPConfig3 installation that supports putting email and websites in /home instead of /var.
This is useful when hosting ISPConfig 3 in a dedicated server where the / partition is small and /home is much bigger.
This situation is encountered for example when using dedicated servers from the french hosting company OVH.

This modified ISPConfig3 setup also sets HTTPS port to 8443 instead of 443
This useful when doing port sharing between OpenVPN and Apache:
  - In this case, OpenVPN will be listening to port 443 and it will forward non-VPN connections to the Apache instance running onn port 8443.
