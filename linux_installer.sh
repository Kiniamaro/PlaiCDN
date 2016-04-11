#!/bin/sh

# Run this script as root
# requires wget cuz I'm too lazy to use curl

pip3 install pycrypto
wget https://github.com/profi200/Project_CTR/releases/download/0.15/makerom_015_ctrtool.zip

# these two files are the certificates that I uploaded to my file sharing website
# check them yourself if you don't trust me :^)
wget https://a.maro.xyz/BkJbZtH.crt
wget https://a.maro.xyz/YqO8dBx.key

mv BkJbZtH.crt ctr-common-1.crt
mv YqO8dBx.key ctr-common-1.key
unzip makerom_015_ctrtool.zip
rm -r makerom_015_ctrtool.zip MacOSX/ Windows_x86_64/
mv Linux_x86_64/* ./
rm -r Linux_x86_64/

echo "Installation Successful!"