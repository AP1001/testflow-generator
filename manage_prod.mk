#!make

.PHONY: gen_proj_conf del_proj_conf read_proj_conf
gen_proj_conf:
	cd dnsmasq-confgenerator && python3 -m confgenerator.cli -f ${PWD}/dnsmasq-info.yml -d ${PWD}/dnsconf
	ls dnsconf

read_proj_conf:
	ls dnsconf

del_proj_conf:
	rm -rf dnsconf




