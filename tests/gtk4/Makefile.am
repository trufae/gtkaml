ALL = smoke

EXTRA_DIST = $(ALL:=.gtkaml) window.gtkaml
CLEANFILES = $(ALL) $(ALL:=.vala) $(ALL:=.c)

all-local: $(ALL)

smoke: $(srcdir)/smoke.gtkaml $(top_builddir)/src/gtkamlc
	$(top_builddir)/src/gtkamlc $(VALAFLAGS) --vapidir $(VALA_VAPIDIR) --vapidir $(top_srcdir)/markuphints --pkg gtk4 -d . -o $@ --dump-tree $@.vala $(srcdir)/$@.gtkaml
