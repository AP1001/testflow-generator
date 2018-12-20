#!/bin/bash
source .env
source interface.env
OUTPUT_F=./output/Makefile
# Generate Makefile
gen_iface(){
cat >>${OUTPUT_F} <<EOL
.PHONY: test_$1
test_$1:
	make -s -f basic.mk hint CONTENT="make $1"
	make -C \${TEST_PROJ} $1
	make -C \${TEST_PROJ} status
	make -s -f basic.mk confirm
EOL
}

for i in ${iface[@]}
do
	gen_iface $i
done


cat ${OUTPUT_F}

