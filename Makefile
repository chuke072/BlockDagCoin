ACLOCAL_AMFLAGS = -I build-aux/m4
SUBDIRS = src
if ENABLE_MAN
SUBDIRS += doc/man
endif
.PHONY: deploy FORCE

GZIP_ENV="-9n"

if BUILD_BLOCKDAGCOIN_LIBS
pkgconfigdir = $(libdir)/pkgconfig
pkgconfig_DATA = libblockdagcoinconsensus.pc
endif

BLOCKDAGCOIND_BIN=$(top_builddir)/src/$(BLOCKDAGCOIN_DAEMON_NAME)$(EXEEXT)
BLOCKDAGCOIN_QT_BIN=$(top_builddir)/src/qt/$(BLOCKDAGCOIN_GUI_NAME)$(EXEEXT)
