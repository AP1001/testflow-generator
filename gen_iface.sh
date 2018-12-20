#!/bin/bash
source .env
source interface.env

# Generate Makefile
gen_iface(){
cat >>./Makefile <<EOL
.PHONY: test_$1
test_$1:
	make -f basic.mk hint CONTENT="make $1"
	make -C ${TEST_PROJ} $1
	make -C ${TEST_PROJ} status
	make -f basic.mk confirm
EOL
}

for i in ${iface[@]}
do
	gen_iface $i
done


cat ./Makefile

