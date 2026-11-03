ALL = test4

EXTRA_DIST = $(ALL:=.gtkaml)
CLEANFILES = $(ALL) $(ALL:=.vala) $(ALL:=.c)

all-local: $(ALL)

test4: $(srcdir)/test4.gtkaml $(top_builddir)/src/gtkamlc
	$(top_builddir)/src/gtkamlc $(VALAFLAGS) --vapidir $(VALA_VAPIDIR) --vapidir $(top_srcdir)/markuphints --pkg gtk+-3.0 -d . -o $@ --dump-tree $@.vala $(srcdir)/$@.gtkaml
