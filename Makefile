PREFIX ?= /usr
DESTDIR ?=

dh_flabbergast.1: dh_flabbergast
	pod2man $< $@

clean:
	rm -f dh_flabbergast.1

install:
	install -D dh_flabbergast $(DESTDIR)$(PREFIX)/bin/dh_flabbergast
	install -D dh_flabbergast.1 $(DESTDIR)$(PREFIX)/share/man/man1/dh_flabbergast.1
	install -D o_0.pm $(DESTDIR)$(PREFIX)/share/perl5/Debian/Debhelper/Sequence/o_0.pm

.PHONY: all clean install
