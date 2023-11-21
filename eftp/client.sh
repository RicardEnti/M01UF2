#!/bin/bash
echo "cliente de EFTP"
echo "(1) send"
echo "EFTP 1.0" | nc localhost 3333
echo "(2) listen"
DATA=`nc -l -p 3333 -w 0`

if [ "$DATA" != "KO_HEADER" ]
then
	echo "error 1: BAD HEADER"
	exit 1 
fi
sleep 1
echo "BOOOM" | nc localhost 3333

echo "(6) listen"
DATA=`nc -l -p 3333 -w 0`
echo $DATA 
