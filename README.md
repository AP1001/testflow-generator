# README
* Update `PROJ_VERSION` `PROJECT`  in .env, take dnsmasq as an example
```
export TEST_ARCH=
export TEST_PROJ=
export BUILD_PKG=build_pkg
export PROJ_VERSION=0.8.7
export ORG=elespejo
export PROJECT=dnsmasq
export PAK_SEQ=( ${PROJECT}-confgenerator-${PROJ_VERSION} ${PROJECT}-imageAPI-armv6-${PROJ_VERSION} ${PROJECT}-imageAPI-x86-${PROJ_VERSION} )
export IMG_PKG=${BUILD_PKG}/${PROJECT}-imageAPI-${TEST_ARCH}

```
* update interfaces in interface.env
* Update scenarios test flow for development in dev.env
* Update scenarios test flow for production in prod.env, you probably need add a makfile to do functionality test in this step, take dns as an example
```
#!make
.PHONY: ns_lookup
ns_lookup: 
	nslookup www.iqiyi.com 127.0.0.1
	nslookup www.google.com 127.0.0.1
	nslookup www.facebook.com 127.0.0.1
	nslookup www.github.com 127.0.0.1
```

* Generate Makefile
```
./gen_iface.sh
```

* Generate dev.mk for development test
```
./gen_dev.mk
```

* Generate prod.mk for production test
```
./gen_prod.mk
```

* Make a build
Update build.sh to add the files you need to deliver
```
./build.sh
```