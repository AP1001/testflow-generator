#!/bin/bash
source dev.env
source lib.sh
OUTPUT_F=./output/dev.mk

for s in ${scenarios[@]}
do 
	gen_sce $s $s
done



cat ${OUTPUT_F}
