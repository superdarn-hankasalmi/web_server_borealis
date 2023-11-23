#!/bin/bash
cd /home/server/backends/

declare -A radars
declare -A radar
radar_codes=()

radar_name="han"
radar_codes+=($radar_name)
radar[addr]=
radar[in_port]=
radar[out_port]=
for key in "${!radar[@]}"; do
  radars[$radar_name,$key]=${radar[$key]}
done


borealis_radars=( han )
for i in "${radar_codes[@]}"
do
    if [[ " ${borealis_radars[*]} " == *"$i"* ]];
    then
        screen -d -m -S $i python3 realtimedisplay_borealis.py ${radars[$i,addr]} ${radars[$i,in_port]} ${radars[$i,out_port]}
    else
        screen -d -m -S $i python3 realtimedisplay.py ${radars[$i,addr]} ${radars[$i,in_port]} ${radars[$i,out_port]}
    fi
done

