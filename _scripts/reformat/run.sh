#!/bin/sh

find ../../src/inet/queueing -name "*.cc" -o -name "*.h" | grep -v ../../src/inet/transportlayer/tcp_lwip/lwip  | grep -v ../../src/inet/routing/extras/ >filelist.txt
uncrustify -c omnetpp.style --replace --no-backup -l CPP -F filelist.txt >tmp.out 2>tmp.err
#grep -v 'Parsing:' -B 1 tmp.err && exit 1
#./postprocess filelist.txt
#rm *.uncrustify
