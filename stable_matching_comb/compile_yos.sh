#!/bin/bash
mkdir -p syn_yos
for f in ./*.yos
do
  yosys -s $f
done
