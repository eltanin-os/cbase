include config.mk

.SUFFIXES:
.SUFFIXES: .o .c

GOPTS= -I inc

HDR=\
	inc/_alloca.h\
	inc/_malloc.h\
	inc/_utmpx.h\
	inc/asciitype.h\
	inc/atoll.h\
	inc/blank.h\
	inc/colldata.h\
	inc/config.h\
	inc/getdir.h\
	inc/heirloom.h\
	inc/iblok.h\
	inc/mbtowi.h\
	inc/memalign.h\
	inc/msgselect.h\
	inc/oblok.h\
	inc/pathconf.h\
	inc/pfmt.h\
	inc/re.h\
	inc/regdfa.h\
	inc/regex.h\
	inc/regexp.h\
	inc/regexpr.h\
	inc/sfile.h\
	inc/sigset.h\
	inc/wchar.h\
	inc/wcharm.h\
	inc/wctype.h

BIN=\
	src/awk/awk\
	src/bc/bc\
	src/cal/cal\
	src/comm/comm\
	src/cpio/cpio\
	src/cpio/pax\
	src/csplit/csplit\
	src/cut/cut\
	src/dc/dc\
	src/dd/dd\
	src/df/df\
	src/diff/diff\
	src/ed/ed\
	src/expand/expand\
	src/expand/unexpand\
	src/expr/expr\
	src/file/file\
	src/find/find\
	src/fmt/fmt\
	src/fold/fold\
	src/getconf/getconf\
	src/grep/egrep\
	src/grep/fgrep\
	src/grep/grep\
	src/hd/hd\
	src/join/join\
	src/lex/lex\
	src/mesg/mesg\
	src/more/more\
	src/nl/nl\
	src/od/od\
	src/paste/paste\
	src/patch/patch\
	src/pgrep/pgrep\
	src/pr/pr\
	src/printf/printf\
	src/ps/ps\
	src/sed/sed\
	src/sort/sort\
	src/split/split\
	src/stty/stty\
	src/tabs/newform\
	src/tabs/tabs\
	src/tail/tail\
	src/test/test\
	src/tr/tr\
	src/tsort/tsort\
	src/uniq/uniq\
	src/wc/wc\
	src/what/what\
	src/who/who\
	src/xargs/xargs\
	src/yacc/yacc

CSR=\
	inc/config.h\
	inc/heirloom.h\
	src/awk/ytab.c\
	src/awk/ytab.h\
	src/bc/bc.c\
	src/expr/expr.c\
	src/grep/egrep.c\
	src/lex/parser.c

MAN1=\
	man/awk.1\
	man/bc.1\
	man/cal.1\
	man/comm.1\
	man/cpio.1\
	man/csplit.1\
	man/cut.1\
	man/dc.1\
	man/dd.1\
	man/df.1\
	man/df.1b\
	man/diff.1\
	man/ed.1\
	man/egrep.1\
	man/expand.1\
	man/expr.1\
	man/fgrep.1\
	man/file.1\
	man/find.1\
	man/fmt.1\
	man/fold.1\
	man/getconf.1\
	man/grep.1\
	man/hd.1\
	man/join.1\
	man/lex.1\
	man/mesg.1\
	man/more.1\
	man/newform.1\
	man/nl.1\
	man/od.1\
	man/paste.1\
	man/patch.1\
	man/pax.1\
	man/pgrep.1\
	man/pr.1\
	man/printf.1\
	man/ps.1\
	man/ps.1b\
	man/sed.1\
	man/sort.1\
	man/split.1\
	man/stty.1\
	man/stty.1b\
	man/tabs.1\
	man/tail.1\
	man/test.1\
	man/test.1b\
	man/tr.1\
	man/tr.1b\
	man/tsort.1\
	man/unexpand.1\
	man/uniq.1\
	man/wc.1\
	man/what.1\
	man/who.1\
	man/xargs.1\
	man/yacc.1

# IND OBJ
AWKOBJ=\
	src/awk/awk.o\
	src/awk/b.o\
	src/awk/lex.o\
	src/awk/lib.o\
	src/awk/parse.o\
	src/awk/proctab.o\
	src/awk/run.o\
	src/awk/tran.o\
	src/awk/ytab.o

CPIOOBJ=\
	src/cpio/blast.o\
	src/cpio/cpio.o\
	src/cpio/crc32.o\
	src/cpio/expand.o\
	src/cpio/explode.o\
	src/cpio/inflate.o\
	src/cpio/unshrink.o\
	src/cpio/version.o\
	src/cpio/flags.o\
	src/cpio/nonpax.o

PATCHOBJ=\
	src/patch/backupfile.o\
	src/patch/inp.o\
	src/patch/mkpath.o\
	src/patch/patch.o\
	src/patch/pch.o\
	src/patch/util.o

PAXOBJ=\
	src/cpio/blast.o\
	src/cpio/cpio.o\
	src/cpio/crc32.o\
	src/cpio/expand.o\
	src/cpio/explode.o\
	src/cpio/inflate.o\
	src/cpio/unshrink.o\
	src/cpio/version.o\
	src/cpio/pax.o

DCOBJ=\
	src/dc/dc.o\
	src/dc/version.o

DIFFOBJ=\
	src/diff/diff.o\
	src/diff/diffdir.o\
	src/diff/diffreg.o\
	src/diff/diffver.o

EXPANDOBJ=\
	src/expand/expand.o\
	src/expand/tablist.o

UNEXPANDOBJ=\
	src/expand/unexpand.o\
	src/expand/tablist.o

EGREPOBJ=\
	src/grep/alloc.o\
	src/grep/grep.o\
	src/grep/grid.o\
	src/grep/svid3.o\
	src/grep/egrep.o\
	src/grep/plist.o

FGREPOBJ=\
	src/grep/alloc.o\
	src/grep/grep.o\
	src/grep/grid.o\
	src/grep/svid3.o\
	src/grep/ac.o\
	src/grep/fgrep.o\
	src/grep/plist.o

GREPOBJ=\
	src/grep/alloc.o\
	src/grep/grep.o\
	src/grep/grid.o\
	src/grep/svid3.o\
	src/grep/ggrep.o

LEXOBJ=\
	src/lex/getopt.o\
	src/lex/header.o\
	src/lex/lsearch.o\
	src/lex/lex.o\
	src/lex/parser.o\
	src/lex/sub1.o\
	src/lex/sub2.o\
	src/lex/sub3.o\
	src/lex/wcio.o

SEDOBJ=\
	src/sed/sed0.o\
	src/sed/sed1.o\
	src/sed/version.o

TABSOBJ=\
	src/tabs/tabs.o\
	src/tabs/tabspec.o

NEWFORMOBJ=\
	src/tabs/newform.o\
	src/tabs/tabspec.o

TESTOBJ=\
	src/test/helper.o\
	src/test/test.o\
	src/test/ttest.o\
	src/test/version.o

YACCOBJ=\
	src/yacc/getopt.o\
	src/yacc/y1.o\
	src/yacc/y2.o\
	src/yacc/y3.o\
	src/yacc/y4.o\
	src/yacc/y5.o

# LIB SRC
LIBCOMMONSRC=\
	lib/common/CHECK.c\
	lib/common/asciitype.c\
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
	lib/uxre/_collelem.c\
	lib/uxre/_collmult.c\
	lib/uxre/bracket.c\
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
	lib/wchar/wcwidth.c

# LIB PATH
LIBCOMMON= lib/libcommon.a
LIBUXRE=   lib/libuxre.a
LIBWCHAR=  lib/libwchar.a

# LIB OBJS
LIBCOMMONOBJ= $(LIBCOMMONSRC:.c=.o)
LIBUXREOBJ=   $(LIBUXRESRC:.c=.o)
LIBWCHAROBJ=  $(LIBWCHARSRC:.c=.o)

# GLOBAL VARS
LIB=$(LIBCOMMON) $(LIBUXRE) $(LIBWCHAR)
OBJ=$(BIN:=.o) $(AWKOBJ) $(CPIOOBJ) $(PAXOBJ) $(DCOBJ) $(DIFFOBJ) $(EXPANDOBJ) $(UNEXPANDOBJ) $(EGREPOBJ) $(FGREPOBJ) $(GREPOBJ) $(LEXOBJ) $(SEDOBJ) $(TABSOBJ) $(NEWFORMOBJ) $(TESTOBJ) $(YACCOBJ) $(LIBCOMMONOBJ) $(LIBUXREOBJ) $(LIBWCHAROBJ)
SRC=$(BIN:=.c)

# GENERAL RULES
all: $(BIN)

$(BIN): $(LIB) $(@:=.o)
$(OBJ): $(HDR) config.mk

# SPECIAL OBJECTS
src/awk/ytab.h: src/awk/ytab.o
src/awk/ytab.o:
	$(YACC) $(YFLAGS) src/awk/awkgram.y
	mv y.tab.c src/awk/ytab.c
	mv y.tab.h src/awk/ytab.h
	$(CC) $(CFLAGS) $(CPPFLAGS) -o $@ -c src/awk/ytab.c

# SPECIAL BINARIES
$(AWKOBJ): src/awk/ytab.h
src/awk/awk: $(AWKOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(AWKOBJ) $(AWKLD)

src/cpio/cpio: $(CPIOOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(CPIOOBJ) $(LIB) $(CPIOLD)

src/cpio/pax: $(PAXOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(PAXOBJ) $(LIB) $(CPIOLD)

src/csplit/csplit: src/csplit/csplit.o
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) $(AWKLD)

src/dc/dc: $(DCOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(DCOBJ) $(LIB)

src/diff/diff: $(DIFFOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(DIFFOBJ) $(LIB)

src/expand/expand: $(EXPANDOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(EXPANDOBJ) $(LIB)

src/expand/unexpand: $(UNEXPANDOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(UNEXPANDOBJ) $(LIB)

src/grep/egrep: $(EGREPOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(EGREPOBJ) $(LIB)

src/grep/fgrep: $(FGREPOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(FGREPOBJ) $(LIB)

src/grep/grep: $(GREPOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(GREPOBJ) $(LIB)

src/lex/lex: $(LEXOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(LEXOBJ)

src/more/more: src/more/more.o
	@echo "CC $@ $< $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB) $(MORELD)

src/patch/patch: $(PATCHOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(PATCHOBJ) $(PATCHLD)

src/sed/sed: $(SEDOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(SEDOBJ) $(LIB)

src/tabs/tabs: $(TABSOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(TABSOBJ) $(LIB) $(TABSLD)

src/tabs/newform: $(NEWFORMOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(NEWFORMOBJ) $(LIB)

src/test/test: $(TESTOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(TESTOBJ) $(LIB)

src/yacc/yacc: $(YACCOBJ)
	@echo "CC $@ $?"
	@$(CC) $(LDFLAGS) -o $@ $(YACCOBJ)

# SPECIAL SOURCE
src/bc/bc.c: src/bc/bc.y
	@echo YACC $< $@
	@$(YACC) $<
	@sed -f src/bc/yyval.sed < y.tab.c > $@
	@rm -f y.tab.c

src/expr/expr.c:  src/expr/expr.y
	@echo YACC $< $@
	@$(YACC) $<
	@mv y.tab.c $@

src/grep/egrep.c: src/grep/egrep.y
	@echo YACC $< $@
	@$(YACC) $<
	@mv y.tab.c $@

src/lex/parser.c: src/lex/parser.y
	@echo YACC $< $@
	@$(YACC) $<
	@mv y.tab.c $@

# SUFFIX RULES
.o:
	@echo "CC $@ $< $(LIB)"
	@$(CC) $(LDFLAGS) -o $@ $< $(LIB)

.c.o:
	@echo "CC $@ $<"
	@$(CC) $(CFLAGS) $(GCPPFLAGS) $(GOPTS) -o $@ -c $<

# LIB RULES
$(LIBCOMMON): $(LIBCOMMONOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(LIBUXRE):   $(LIBUXREOBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

$(LIBWCHAR):  $(LIBWCHAROBJ)
	$(AR) rc $@ $?
	$(RANLIB) $@

# HDR RULES
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

# USER RULES
install: all
	$(INSTALL) -dm 755                  $(DESTDIR)/$(PREFIX)/$(BINDIR)
	$(INSTALL) -dm 755                  $(DESTDIR)/$(PREFIX)/$(LIBDIR)
	$(STRIP)           $(BIN)
	$(INSTALL) -cm 755 $(BIN)           $(DESTDIR)/$(PREFIX)/$(BINDIR)
	$(INSTALL) -cm 644 src/yacc/yaccpar $(DESTDIR)/$(PREFIX)/$(LIBDIR)
	$(INSTALL) -cm 644 src/file/magic   $(DESTDIR)/$(PREFIX)/$(LIBDIR)

install-man:
	$(INSTALL) -dm 755         $(DESTDIR)/$(MANPREFIX)/man1
	$(INSTALL) -cm 644 $(MAN1) $(DESTDIR)/$(MANPREFIX)/man1

clean:
	rm -f $(BIN) $(LIB) $(OBJ) y.tab.* $(CSR) yacc.*

.PHONY:
	all clean
