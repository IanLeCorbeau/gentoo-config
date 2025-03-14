# Makefile to quickly install everything.

# No 'all' target. 'make install' needs to be run.
all:
	@echo "Nothing to do for all, skipping..."

# Explicitely create all dirs first.
dirs:
	install -d ${DESTDIR}/etc
	install -d ${DESTDIR}/etc/portage
	install -d ${DESTDIR}/etc/dracut.conf.d
	install -d ${DESTDIR}/etc/local.d
	install -d ${DESTDIR}/etc/logrotate.d
	install -d ${DESTDIR}/etc/rsyslog.d
	install -d ${DESTDIR}/etc/smtpd

install: dirs
	

