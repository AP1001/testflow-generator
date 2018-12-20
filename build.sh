#!/bin/bash
rm -rf output
mkdir output
./gen_iface.sh
./gen_dev.sh
./gen_prod.sh
cp basic.mk output
cp ns_lookup.mk output 
cp .env output
ls -al output
