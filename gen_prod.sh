#!/bin/bash
source prod.env
source lib.sh
OUTPUT_F=./output/prod.mk

for s in ${scenarios[@]}
do 
	gen_sce $s $s
done



cat ${OUTPUT_F}
