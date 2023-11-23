#!/bin/bash
cd websockify/websockify
start_port=
web_address=
for i in {0..1}
#do
    #screen -d -m -S $((start_port + 100 + i)) websockify -v --cert=/home/cassie/backends/certs/ --key=/home/cassie/backends/certs/ $((start_port + 100 + i)) $web_address:$((start_port + i)) >>/dev/null &

#done

do
    screen -d -m -S $((start_port + 100 + i)) websockify -v $((start_port + 100 + i)) $web_address:$((start_port + i)) >>/dev/null &

done
