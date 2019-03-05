#!/bin/bash
echo "$1"
echo -n "total non-XOR: "
grep -w -c 'AND\|ANDN\|NAND\|NANDN\|OR\|ORN\|NOR\|NORN\|MUX\|FA\|HA\|HADDER' $1
echo -n "total XOR: "
grep -w -c 'XOR\|XNOR\|IV\|DFF' $1