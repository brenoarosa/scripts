#!/bin/bash

USERNAME=$1
PASSWORD=$2

ERROR_PRINT="Usage: $0 <username> <password>"


if [ $# -ge 3 ] || [ $# -eq 1 ]
then
  echo $ERROR_PRINT
  exit 1
fi


sshpass -p $PASSWORD ssh $USERNAME@loghost02.del.ufrj.br 'bash' 
# ssh $USERNAME@loghost02.del.ufrj.br 'bash -s' < hello.sh
# ssh $USERNAME@loghost02.del.ufrj.br << 'hello.sh'
echo "HERE"

