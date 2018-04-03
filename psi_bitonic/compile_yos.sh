#!/bin/bash
mkdir -p syn_yos
for f in ./psi_64_16_8.yos
do
  yosys -s $f
done