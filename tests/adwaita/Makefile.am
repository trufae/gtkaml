ALL = smoke

EXTRA_DIST = $(ALL:=.gtkaml)
CLEANFILES = $(ALL) $(ALL:=.vala) $(ALL:=.c)

all-local: $(ALL)

smoke: $(srcdir)/smoke.gtkaml $(top_builddir)/src/gtkamlc
	$(top_builddir)/src/gtkamlc $(VALAFLAGS) --vapidir $(VALA_VAPIDIR) --vapidir $(top_srcdir)/markuphints --pkg gtk4 --pkg libadwaita-1 --vapidir $(ADWAITA_VAPIDIR) -d . -o $@ --dump-tree $@.vala $(srcdir)/$@.gtkaml
