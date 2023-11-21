#!/bin/bash


echo "servidor de EFTP"
echo "(0) listen"
echo $DATA
echo "(3) test & send"  
if [ "$DATA" != "EFTP 1.0"]
then
	echo "ERROR 1: BAD HEADER"
	sleep 1
	echo "KO_HEADER" | nc $CLIENT 333
	exit 1
fi

echo "OK_HEADER"
sleep 1
echo "OK_HEADER" | nc $CLIENT 333

echo "(4) listen"

if [ "$DATA" != "EFTP 1.0"]
DATA=`nc -l -p 3333 -w 0`


if [ "$DATA" != "BOOOM" ]
then
	echo " ERROR 2: KO_HANDSHAKE "
if else [ "$DATA" == "BOOOM" ]
then 
	echo "OK_HANDSHAKE"
fi

