#!/bin/bash
echo -ne "\e[1;33m Hello,`whoami`, List of Linux Instances\e[0m\n\n"
echo -ne "\e[1;31m DEV Environment \e[0m\n"
echo -ne "\e[1;32m 1. MYSQL		:		10.1.2.4 \e[0m\n"
echo -ne "\e[1;32m 2. APACHE	:		10.1.2.5 \e[0m\n"
echo -ne "\e[1;32m 3. NGINX		:		10.1.2.6 \e[0m\n"
echo -ne "\e[1;32m 4. FRONTEND	:		10.1.2.7 \e[0m\n"
echo -ne "\e[1;32m 5. BACKEND	: 		10.1.2.8 \e[0m\n"


echo -ne "\e[1;31m STG Environment \e[0m\n"
echo -ne "\e[1;32m 20. MYSQL		:	10.1.3.4 \e[0m\n"
echo -ne "\e[1;32m 21. ORIENTDB		:	10.1.3.5 \e[0m\n"
echo -ne "\e[1;32m 22. APACHE		:	10.1.3.6 \e[0m\n"
echo -ne "\e[1;32m 23. BACKEND		:	10.1.3.7 \e[0m\n"
echo -ne "\e[1;32m 24. FRONTEND		:	10.1.3.8 \e[0m\n"
echo -ne "\e[1;32m 25. FILESHARE	:	10.1.3.9 \e[0m\n"


echo -ne "\e[1;31m INT01 Environment \e[0m\n"
echo -ne "\e[1;32m 30. MYSQL		:	10.2.10.4 \e[0m\n"
echo -ne "\e[1;32m 31. ORIENTDB		:	10.2.10.5 \e[0m\n"
echo -ne "\e[1;32m 32. APACHE		:	10.2.10.6 \e[0m\n"
echo -ne "\e[1;32m 33. BACKEND		:	10.2.10.7 \e[0m\n"
echo -ne "\e[1;32m 34. FRONTEND		:	10.2.10.8 \e[0m\n"
echo -ne "\e[1;32m 35. FILESHARE	:	10.2.10.9 \e[0m\n"

echo -ne "\e[1;31m MGMT/Tooling Instances \e[0m\n"
echo -ne "\e[1;32m 60. MYSQL:			10.3.10.4  \e[0m\n"
echo -ne "\e[1;32m 61. APACHE:			10.3.10.5 \e[0m\n"
echo -ne "\e[1;32m 62. FRONTEND:		10.3.10.6 \e[0m\n"
echo -ne "\e[1;32m 63. BACKEND:			10.3.10.7 \e[0m\n"


echo -ne "\e[1;33m Select the host from above list to login\e[0m:  ";
read host
#passing the keys
a=`gpg -d --batch --passphrase "80&Zp^DW" ~/.passkey.gpg`
case $host in
1) sshpass -p $a ssh -t devaccount@10.1.2.4 "echo $a | sudo -S su - && sudo su -";;
2) sshpass -p $a ssh -t devaccount@10.1.2.5 "echo $a | sudo -S su - && sudo su -";;
3) sshpass -p $a ssh -t devaccount@10.1.2.6 "echo $a | sudo -S su - && sudo su -";;
4) sshpass -p $a ssh -t devaccount@10.1.2.7 "echo $a | sudo -S su - && sudo su -";;
5) sshpass -p $a ssh -t devaccount@10.1.2.8 "echo $a | sudo -S su - && sudo su -";;
20) sshpass -p $a ssh -t devaccount@10.1.3.4 "echo $a | sudo -S su - && sudo su -";;
21) sshpass -p $a ssh -t devaccount@10.1.3.5 "echo $a | sudo -S su - && sudo su -";;
22) sshpass -p $a ssh -t devaccount@10.1.3.6 "echo $a | sudo -S su - && sudo su -";;
23) sshpass -p $a ssh -t devaccount@10.1.3.7 "echo $a | sudo -S su - && sudo su -";;
24) sshpass -p $a ssh -t devaccount@10.1.3.8 "echo $a | sudo -S su - && sudo su -";;
25) sshpass -p $a ssh -t devaccount@10.1.3.9 "echo $a | sudo -S su - && sudo su -";;
30) sshpass -p $a ssh -t devaccount@10.2.10.4 "echo $a | sudo -S su - && sudo su -";;
31) sshpass -p $a ssh -t devaccount@10.2.10.5 "echo $a | sudo -S su - && sudo su -";;
32) sshpass -p $a ssh -t devaccount@10.2.10.6 "echo $a | sudo -S su - && sudo su -";;
33) sshpass -p $a ssh -t devaccount@10.2.10.7 "echo $a | sudo -S su - && sudo su -";;
34) sshpass -p $a ssh -t devaccount@10.2.10.8 "echo $a | sudo -S su - && sudo su -";;
35) sshpass -p $a ssh -t devaccount@10.2.10.9 "echo $a | sudo -S su - && sudo su -";;
60) sshpass -p $a ssh -t devaccount@10.3.10.4 "echo $a | sudo -S su - && sudo su -";;
61) sshpass -p $a ssh -t devaccount@10.3.10.5 "echo $a | sudo -S su - && sudo su -";;
62) sshpass -p $a ssh -t devaccount@10.3.10.6 "echo $a | sudo -S su - && sudo su -";;
63) sshpass -p $a ssh -t devaccount@10.3.10.7 "echo $a | sudo -S su - && sudo su -";;
*) echo -ne "\e[1;33m Please select from the listed host \e[0m\n";;
esac
