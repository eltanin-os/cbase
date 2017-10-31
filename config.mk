## HEIRLOOM
SHELL  = /bin/sh
DFLDIR = /etc/default

DEFS  = -DDEFAULT='"$(DFLDIR)/ps"' -DSUDFL='"$(DFLDIR)/su"'\
	-DSHELL='"$(SHELL)"'       -Dfunc='test' -DDIFFH='"diffh"'

STDS  = -DUCB -DSUS

CPPFLAGS += -D_GNU_SOURCE $(DEFS) $(STDS)
LDLIBS    = -lcurses -lterminfo

## DEFAULT
AR     = ar
CC     = cc
RANLIB = ranlib

CPPFLAGS += -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_FILE_OFFSET_BITS=64
CFLAGS   += -std=c99 -Wall -pedantic
LDFLAGS  += -Os -static

PREFIX = /usr/local
