include config.mk

.SUFFIXES:
.SUFFIXES: .o .c

INC= inc

HDR=\
	inc/_alloca.h\
	inc/alloc.h\
	inc/asciitype.h\
	inc/atoll.h\
	inc/blank.h\
	inc/config.h\
	inc/colldata.h\
	inc/defs.h\
	inc/diff.h\
	inc/heirloom.h\
	inc/getdir.h\
	inc/grep.h\
	inc/iblok.h\
	inc/_malloc.h\
	inc/mbtowi.h\
	inc/memalign.h\
	inc/msgselect.h\
	inc/oblok.h\
	inc/pathconf.h\
	inc/pfmt.h\
	inc/regdfa.h\
	inc/regex.h\
	inc/regexp.h\
	inc/regexpr.h\
	inc/re.h\
	inc/sed.h\
	inc/sfile.h\
	inc/sigset.h\
	inc/tablist.h\
	inc/tabspec.h\
	inc/_utmpx.h\
	inc/wchar.h\
	inc/wcharm.h\
	inc/wctype.h

# SOURCE
BIN=\
	src/cal\
	src/cksum\
	src/cmp\
	src/comm\
	src/cut\
	src/csplit\
	src/dd\
	src/df\
	src/diff\
	src/diffh\
	src/du\
	src/ed\
	src/expand\
	src/find\
	src/fold\
	src/getconf\
	src/grep\
	src/install\
	src/join\
	src/kill\
	src/logname\
	src/mesg\
	src/more\
	src/newform\
	src/nl\
	src/nohup\
	src/od\
	src/paste\
	src/pathchk\
	src/pr\
	src/printf\
	src/ps\
	src/renice\
	src/sed0\
	src/sort\
	src/split\
	src/stty\
	src/su\
	src/tabs\
	src/tail\
	src/tee\
	src/test\
	src/touch\
	src/tr\
	src/tsort\
	src/unexpand\
	src/uniq\
	src/wc\
	src/who\
	src/xargs

# LIB SOURCE
LIBCOMMONSRC=\
	lib/common/asciitype.c\
	lib/common/CHECK.c\
	lib/common/getdir.c\
	lib/common/getopt.c\
	lib/common/gmatch.c\
	lib/common/ib_alloc.c\
	lib/common/ib_close.c\
	lib/common/ib_free.c\
	lib/common/ib_getlin.c\
	lib/common/ib_getw.c\
	lib/common/ib_open.c\
	lib/common/ib_popen.c\
	lib/common/ib_read.c\
	lib/common/ib_seek.c\
	lib/common/memalign.c\
	lib/common/oblok.c\
	lib/common/pathconf.c\
	lib/common/pfmt.c\
	lib/common/pfmt_label.c\
	lib/common/regexpr.c\
	lib/common/setlabel.c\
	lib/common/setuxlabel.c\
	lib/common/sfile.c\
	lib/common/sighold.c\
	lib/common/sigignore.c\
	lib/common/signal.c\
	lib/common/sigpause.c\
	lib/common/sigrelse.c\
	lib/common/sigset.c\
	lib/common/strtol.c\
	lib/common/sysv3.c\
	lib/common/utmpx.c\
	lib/common/vpfmt.c

LIBUXRESRC=\
	lib/uxre/bracket.c\
	lib/uxre/_collelem.c\
	lib/uxre/_collmult.c\
	lib/uxre/onefile.c\
	lib/uxre/regcomp.c\
	lib/uxre/regdfa.c\
	lib/uxre/regerror.c\
	lib/uxre/regexec.c\
	lib/uxre/regfree.c\
	lib/uxre/regnfa.c\
	lib/uxre/regparse.c\
	lib/uxre/stubs.c

LIBWCHARSRC=\
	lib/wchar/mblen.c\
	lib/wchar/mbrtowc.c\
	lib/wchar/mbstowcs.c\
	lib/wchar/mbtowc.c\
	lib/wchar/wcslen.c\
	lib/wchar/wcsncmp.c\
	lib/wchar/wctfunc.c\
	lib/wchar/wctomb.c\
	lib/wchar/wctype.c\
	lib/wchar/wcwidth.c\

LIBSHAREDSRC=\
	lib/shared/ac.c\
	lib/shared/alloc.c\
	lib/shared/col.c\
	lib/shared/diffdir.c\
	lib/shared/diffreg.c\
	lib/shared/diffver.c\
	lib/shared/grid.c\
	lib/shared/helper.c\
	lib/shared/plist.c\
	lib/shared/rcomp.c\
	lib/shared/sed1.c\
	lib/shared/strsig.c\
	lib/shared/sus.c\
	lib/shared/svid3.c\
	lib/shared/tablist.c\
	lib/shared/tabspec.c\
	lib/shared/test.c\
	lib/shared/version.c

# LIB PATH
LIBCOMMON = lib/libcommon.a
LIBUXRE   = lib/libuxre.a
LIBWCHAR  = lib/libwchar.a
LIBSHARED = lib/libshared.a

# LIB OBJS
LIBCOMMONOBJ = $(LIBCOMMONSRC:.c=.o)
LIBUXREOBJ   = $(LIBUXRESRC:.c=.o)
LIBWCHAROBJ  = $(LIBWCHARSRC:.c=.o)
LIBSHAREDOBJ = $(LIBSHAREDSRC:.c=.o)

# ALL
LIB= $(LIBSHARED) $(LIBCOMMON) $(LIBUXRE) $(LIBWCHAR)
OBJ= $(BIN:=.o) $(LIBCOMMONOBJ) $(LIBUXREOBJ) $(LIBWCHAROBJ) $(LIBSHAREDOBJ)
SRC= $(BIN:=.c)

# VAR RULES
all: $(BIN)

$(BIN): $(LIB) $(@:=.o)
$(OBJ): $(HDR) config.mk

# SUFFIX RULES
.o:
	$(CC) $(LDFLAGS) -o $@ $< $(LIB) $(LDLIBS)

.c.o:
	$(CC) $(CFLAGS) $(CPPFLAGS) -I $(INC) -o $@ -c $<

# LIBRARIES RULES
$(LIBCOMMON): $(LIBCOMMONOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(LIBUXRE): $(LIBUXREOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(LIBWCHAR): $(LIBWCHAROBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(LIBSHARED): $(LIBSHAREDOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

# OTHERS RULES
inc/config.h:
	-echo '/*	Auto-generated by make. Do no edit!	*/' >inc/config.h
	-echo '#include <wchar.h>' >___build$$$$.c ; \
	echo 'int main(void) { wcwidth(0); return 0; }' >>___build$$$$.c ; \
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -o ___build$$$$  ___build$$$$.c >/dev/null 2>&1 ; \
	if test $$? = 0 && test -f ___build$$$$ ; \
	then	echo '#include	<wchar.h>' >>inc/config.h ; \
	fi ; \
	rm -f ___build$$$$ ___build$$$$.c
	-echo '#include <wctype.h>' >___build$$$$.c ; \
	echo 'int main(void) { iswprint(0); return 0; }' >>___build$$$$.c ; \
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -o ___build$$$$  ___build$$$$.c >/dev/null 2>&1 ; \
	if test $$? = 0 && test -f ___build$$$$ ; \
	then	echo '#include	<wctype.h>' >>inc/config.h ; \
	fi ; \
	rm -f ___build$$$$ ___build$$$$.c
	-echo '#include <libgen.h>' >___build$$$$.c ; \
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -c ___build$$$$.c >/dev/null 2>&1 ; \
	if test $$? = 0 && test -f ___build$$$$.o ; \
	then	echo '#include	<libgen.h>' >>inc/config.h ; \
	fi ; \
	rm -f ___build$$$$.o ___build$$$$.c
	-echo '#include <sys/types.h>' >___build$$$$.c ; \
	echo '#include <sys/mkdev.h>' >>___build$$$$.c ; \
	echo 'int main(void) { major(0); return 0; }' >>___build$$$$.c ; \
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -o ___build$$$$  ___build$$$$.c >/dev/null 2>&1 ; \
	if test $$? = 0 && test -f ___build$$$$ ; \
	then	echo '#include	<sys/mkdev.h>' >>inc/config.h ; \
	fi ; \
	rm -f ___build$$$$ ___build$$$$.c
	-echo 'long long foo;' >___build$$$$.c ; \
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -c ___build$$$$.c >/dev/null 2>&1 ; \
	if test $$? = 0 && test -f ___build$$$$.o ; \
	then	echo '#define	LONGLONG' >>inc/config.h ; \
	fi ; \
	rm -f ___build$$$$.o ___build$$$$.c
	-echo '#include <sys/types.h>' >___build$$$$.c ; \
	echo 'blkcnt_t foo;' >>___build$$$$.c ; \
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LARGEF) $(IWCHAR) -c ___build$$$$.c >/dev/null 2>&1 ; \
	if test $$? != 0 || test ! -f ___build$$$$.o ; \
	then	echo 'typedef	long	blkcnt_t;' >>inc/config.h ; \
	fi ; \
	rm -f ___build$$$$.o ___build$$$$.c

inc/heirloom.h: CHANGES
	rm -f inc/heirloom.h
	awk <CHANGES '{ if ($$2 ~ /^[0-9][0-9][0-9][0-9][0-9][0-9]$$/) \
			version = $$2; \
		else \
			version = '`date +%y%m%d`'; \
		printf("#define\tHEIRLOOM_TOOLCHEST_VERSION\t%d\n", \
			version + 20000000); \
		exit }' >inc/heirloom.h

# USER ACTIONS
cbase: $(LIB) $(SRC)
	mkdir -p build
	for f in $(SRC); do sed "s/^main(/$$(echo "$$(basename $${f%.c})" | sed s/-/_/g)_&/" < $$f > build/$$(basename $$f); done
	echo '#include <libgen.h>'                                                                                                                              > build/$@.c
	echo '#include <stdio.h>'                                                                                                                               >> build/$@.c
	echo '#include <string.h>'                                                                                                                              >> build/$@.c
	for f in $(SRC); do echo "int $$(echo "$$(basename $${f%.c})" | sed s/-/_/g)_main(int, char **);"; done                                                 >> build/$@.c
	echo 'int main(int argc, char *argv[]) { char *s = basename(argv[0]);'                                                                                  >> build/$@.c
	echo 'if(!strcmp(s,"cbase")) { argc--; argv++; s = basename(argv[0]); } if(0) ;'                                                                    >> build/$@.c
	for f in $(SRC); do echo "else if(!strcmp(s, \"$$(basename $${f%.c})\")) return $$(echo "$$(basename $${f%.c})" | sed s/-/_/g)_main(argc, argv);"; done >> build/$@.c
	echo 'else { '                                                                                                                                          >> build/$@.c
	for f in $(SRC); do echo "fputs(\"$$(basename $${f%.c}) \", stdout);"; done                                                                             >> build/$@.c
	echo 'putchar(0xa); }; return 0; }'                                                                                                                     >> build/$@.c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(LDFLAGS) -I $(INC) -o $@ build/*.c $(LIB) $(LDLIBS)
	rm -rf build

cbase-install: cbase
	install -dm 755 $(DESTDIR)/$(PREFIX)/bin
	install -csm 755 cbase $(DESTDIR)/$(PREFIX)/bin
	for f in $$(echo $(BIN) | sed 's/src\///g'); do ln -s cbase $(DESTDIR)/$(PREFIX)/bin/$$f; done

install: all
	install -dm 755 $(DESTDIR)/$(PREFIX)/bin
	install -csm 755 $(BIN) $(DESTDIR)/$(PREFIX)/bin

clean:
	rm -f $(BIN) $(OBJ) $(LIB) inc/config.mk inc/heirloom.h cbase

.PHONY:
	all install clean
