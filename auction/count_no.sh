#!/bin/bash
for f in syn_no/*.v
do
  ../circuit_synthesis/script/count.sh $f >> count_no.log
done
