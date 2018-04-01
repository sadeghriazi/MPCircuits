#!/bin/bash
for f in syn_yos/*.v
do
  ../circuit_synthesis/script/count.sh $f >> count_yos.log
done
