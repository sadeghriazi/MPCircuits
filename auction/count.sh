#!/bin/bash
for f in syn/*.v
do
  ../circuit_synthesis/script/count.sh $f > count.log
done
