SCRIPTS = ff ffv
PREFIX = /usr/local
BINDIR = $(PREFIX)/bin

all:
	@echo "Nothing to build. Use 'make install' to install the scripts."

install:
	@for script in $(SCRIPTS); do \
		install -Dm755 $$script $(DESTDIR)$(BINDIR)/$$script; \
	done

uninstall:
	@for script in $(SCRIPTS); do \
		rm -f $(DESTDIR)$(BINDIR)/$$script; \
	done

clean:
	@echo "Nothing to clean."
