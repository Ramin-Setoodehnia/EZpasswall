#!/bin/sh /etc/rc.common

START=99

start(){

echo "Starting Service ... "

ping -c 3 127.0.0.1

    sh /root/f2.sh

}
