#!/bin/bash
#add fix to exercise6-fix here
c_host=$(hostname)
files="${@:1:$#-1}"
if [ "$c_host" == "server1" ]
then
        o_host='server2'
else
        o_host='server1'
fi
command="sudo scp ${files} root@${o_host}:${@: -1}"
script -q -c "$command" > log.txt
awk '{print $8}' log.txt | paste -sd+ | bc
rm log.txt