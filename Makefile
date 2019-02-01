.ONESHELL:

docker_image:
	cd stx-tools/ && make
run_container:
	cd stx-tools/centos-mirror-tools/ && docker run -it --volume $(PWD):/localdisk local/builder-stx-builder:7.4 bash
clone:
	tools/clone.sh
update:
	tools/update.sh
distclean:
	rm -rf stx-*
