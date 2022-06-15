# DESCRIPTION



# NOTES

## Establish connection

For custom machines this is the vpn profile
sudo openvpn breachingad.ovpn


Configure DNS server in NetworkManager
sudo systemctl restart NetworkManager

dig @10.200.28.101 ntlmauth.za.tryhackme.com


# FLAG

## Task 3  NTLM Authenticated Services
Since most AD environments have account lockout configured, we won't be able to run a full brute-force attack. Instead, we need to perform a password spraying attack. Instead of trying multiple different passwords, which may trigger the account lockout mechanism, we choose and use one password and attempt to authenticate with all the usernames we have acquired. However, it should be noted that these types of attacks can be detected due to the amount of failed authentication attempts they will generate.

