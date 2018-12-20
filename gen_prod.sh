#!/bin/bash
source prod.env
OUTPUT_F=./function_prod.mk

for s in ${scenarios[@]}
do 
	gen_sce $s $s
done



cat ${OUTPUT_F}
