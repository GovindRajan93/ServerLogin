#!/bin/bash
#remove existing gpg files
for i in passkey passkey.gpg
do
if [ -f ~/.$i ];
then 
  rm -f  ~/.$i
fi
done
#remove if the gnupg directory
if [ -d ~/.gnupg ];
then
rm -fr ~/.gnupg
fi
#Install gnupg for password encryption and configure it
sudo apt-get install gnupg
#Get the user credentials
read -sp "Enter your Linux Username:" devacc
read -sp "Enter your Linux Account Password:" devkey

echo $devkey > ~/.passkey
gpg -c --batch --passphrase "80&Zp^DW" ~/.passkey
rm -f .passkey

# echo "Replace the yourldap placeholder with yours
sed -i "s/devaccount/$devacc/g" Server-Login.sh
# echo "Provide execute permissions"
chmod u+x,g+x Server-Login.sh

#Set the .bashrc and reload the profile
echo "alias login='bash Server-Login.sh'" > ~/.bashrc
source ~/.bashrc
