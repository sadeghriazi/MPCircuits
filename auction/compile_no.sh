#!/bin/bash
mkdir -p syn_no
design_vision -no_gui -f ./*_no.dcsh
rm *.pvl *.syn *.mr *.log *.svf
./count_no.sh