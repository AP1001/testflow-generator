# Generate function.mk
gen_sce(){
cat>> ${OUTPUT_F}<<EOL
.PHONY: test_$1
test_$1:
	make -s -f basic.mk hint CONTENT="make $1"
EOL

name=$2[@]
a=("${!name}")
for i in "${a[@]}"
	do 
		cat >>${OUTPUT_F} <<EOL
	make $i
EOL
done
}



