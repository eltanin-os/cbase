## DEFAULT
AR     = ar
CC     = cc
YACC   = yacc -d
RANLIB = ranlib

CPPFLAGS = -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_FILE_OFFSET_BITS=64
CFLAGS   = -Os -std=c99 -Wall -pedantic
LDFLAGS  =

PREFIX    = /usr/local
MANPREFIX = $(PREFIX)/share/man

INSTALL=install
STRIP=strip

## HEIRLOOM
SHELL   = /bin/sh
DFLDIR  = $(PREFIX)/etc/default
DLIBDIR = $(PREFIX)/lib

DEFS =\
	-DCCSBIN='"/bin"'\
	-DDEFBIN='"/bin"'\
	-DSUSBIN='"/bin"'\
	-DSV3BIN='"/bin"'\
	-DUCBBIN='"/bin"'\
	-DDEFAULT='"$(DFLDIR)/ps"'\
	-DDC='"$(SV3BIN)/dc"'\
	-DDIFFH='"$(DFLDIR)/diffh"'\
	-Dfunc='test'\
	-DFORMPATH='"$(DLIBDIR)/lex"'\
	-DLIBB='"$(DLIBDIR)/lib.b"'\
	-DMAGIC='"$(DLIBDIR)/magic"'\
	-DPARSER='"$(DLIBDIR)/yaccpar"'\
	-DSHELL='"$(SHELL)"'\
	-DSUDFL='"$(DFLDIR)/su"'\
	-DTARDFL='"$(DFLDIR)/tar"'\
	-DUSE_ZLIB=0\
	-DUSE_BZLIB=0

STDS =\
	-DUCB\
	-DSUS

GCPPFLAGS = $(CPPFLAGS) $(DEFS) $(STDS)
AWKLD   = -lm
#CPIOLD  = -lz -lbz2
MORELD  = -lcurses
TABSLD  = -lcurses
# PATCHLD = -lbsd

BINDIR=/bin
LIBDIR=/lib
