#!/bin/bash
mkdir -p syn_yos
for f in ./stable_matching_comb_4_4.yos
do
  yosys -s $f
done