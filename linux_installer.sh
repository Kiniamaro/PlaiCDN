#!/bin/sh

# Run this script as root
# requires python3-pip but you should have that already

pip3 install pycrypto

# these 4 files are the certificates and makerom and ctrtool
# check them yourself if you don't trust me :^)
curl -o ctr-common-1.crt https://a.maro.xyz/BkJbZtH.crt
curl -o ctr-common-1.key https://a.maro.xyz/YqO8dBx.key
curl -o makerom https://a.maro.xyz/jKh9QF9
curl -o ctrtool https://a.maro.xyz/AeNG5J2

echo "Installation Successful!"