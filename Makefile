.PHONY: test_config
test_config:
	make -f basic.mk hint CONTENT="make config"
	make -C test config
	make -C test status
	make -f basic.mk confirm
.PHONY: test_start
test_start:
	make -f basic.mk hint CONTENT="make start"
	make -C test start
	make -C test status
	make -f basic.mk confirm
.PHONY: test_stop
test_stop:
	make -f basic.mk hint CONTENT="make stop"
	make -C test stop
	make -C test status
	make -f basic.mk confirm
.PHONY: test_restart
test_restart:
	make -f basic.mk hint CONTENT="make restart"
	make -C test restart
	make -C test status
	make -f basic.mk confirm
.PHONY: test_list
test_list:
	make -f basic.mk hint CONTENT="make list"
	make -C test list
	make -C test status
	make -f basic.mk confirm
.PHONY: test_remove
test_remove:
	make -f basic.mk hint CONTENT="make remove"
	make -C test remove
	make -C test status
	make -f basic.mk confirm
