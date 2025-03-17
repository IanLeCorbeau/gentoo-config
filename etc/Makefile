# Makefile to quickly install everything.

PORTAGEDIR	= etc/portage
ENVFILES	= ${PORTAGEDIR}/compiler-clang ${PORTAGEDIR}/compiler-gcc \
		  ${PORTAGEDIR}/nolto
LOGROTATE	= logrotate.d/nftables logrotate.d/portage


# No 'all' target. 'make install' needs to be run.
all:
	@echo "Nothing to do for all, skipping..."

# Explicitely create all dirs first.
dirs:
	install -d ${DESTDIR}/etc
	install -d ${DESTDIR}/etc/dracut.conf.d
	install -d ${DESTDIR}/etc/local.d
	install -d ${DESTDIR}/etc/logrotate.d
	install -d ${DESTDIR}/etc/rsyslog.d
	install -d ${DESTDIR}/etc/smtpd

portagedirs:
	install -d ${DESTDIR}/${PORTAGEDIR}
	install -d ${DESTDIR}/${PORTAGEDIR}env
	install -d ${DESTDIR}/${PORTAGEDIR}/package.use

install: dirs portagedirs
	install -m 644 nftables.rules ${DESTDIR}/etc
	install -m 644 dracut.conf.d/gentoo.conf ${DESTDIR}/etc/dracut.conf.d
	install -m 755 local.d/rm-machineid.stop ${DESTDIR}/etc/local.d
	install -m 644 ${LOGROTATE} ${DESTDIR}/etc/logrotate.d
	install -m 644 rsyslog.d/nftables.log ${DESTDIR}/rsyslog.d
	install -m 644 smtpd/smtpd.conf ${DESTDIR}/smtpd
	install -m 644 ${ENVFILES} ${DESTDIR}/${PORTAGEDIR}/env
