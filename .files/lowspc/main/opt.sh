#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
MAGENTA='\033[0;35m'
CYAN='\033[0;36m'
GRAY='\033[0;37m'
NC='\033[0m' # No Color

echo "Running as root..."

sleep 3

clear

echo "Updating Please Wait..."

service passwall stop

cd /root/

rm f2.sh

wget https://raw.githubusercontent.com/peditx/iranIPS/refs/heads/main/.files/lowspc/f2.sh

chmod 777 f2.sh

cd /etc/init.d/

rm peditx

wget https://raw.githubusercontent.com/amirhosseinchoghaei/mi4agigabit/main/amir

chmod +x /etc/init.d/amir

/etc/init.d/amir enable

cd /root/


/etc/init.d/amir start

echo -e "${GREEN} Update Complated ! ${ENDCOLOR}"