## HEIRLOOM
SHELL = /bin/sh

DEFBIN = /usr/5bin
SUSBIN = /usr/5bin/posix
SU3BIN = /usr/5bin/posix2001
UCBBIN = /usr/ucb
CCSBIN = /usr/ccs/bin
DFLDIR = /etc/default

DEFS  = -DDEFAULT='"$(DFLDIR)/ps"' -DSUDFL='"$(DFLDIR)/su"'\
	-DSHELL='"$(SHELL)"'

PATHS = -DSUSBIN='"$(SUSBIN)"' -DSU3BIN='"$(SU3BIN)"' -DDEFBIN='"$(DEFBIN)"'\
	-DUCBBIN='"$(UCBBIN)"' -DCCSBIN='"$(CCSBIN)"' -DSV3BIN='$(SV3BIN)'

STDS  = -DUCB -DSUS

CPPFLAGS += -D_GNU_SOURCE $(DEFS) $(PATHS) $(STDS)

## DEFAULT
AR     = ar
CC     = cc
RANLIB = ranlib

CPPFLAGS += -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_FILE_OFFSET_BITS=64
CFLAGS   += -std=c99 -Wall -pedantic
LDFLAGS  += -Os -static

PREFIX = /usr/local
