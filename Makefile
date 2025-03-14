MAKE	= make -C

SUBDIRS	= etc usr

all: 
	@echo "Nothing to do for 'all'."

install:
	for _dir in ${SUBDIRS}; do \
		${MAKE} $$_dir install; \
		done
