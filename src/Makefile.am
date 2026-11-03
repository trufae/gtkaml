AM_CPPFLAGS = \
	$(GLIB_CFLAGS) \
	$(GIO_CFLAGS) \
	$(VALA_CFLAGS) \
	$(LIBXML2_CFLAGS) \
	-I$(top_srcdir)/vapi \
	-I$(srcdir) \
	-I$(top_builddir) \
	-DPACKAGE_DATADIR=\"$(pkgdatadir)\"

bin_PROGRAMS = gtkamlc

BUILT_SOURCES = gtkamlc.stamp
CLEANFILES = gtkamlc.stamp

gtkamlc_VALASOURCES = \
	GtkamlAttribute.vala \
	GtkamlClassDefinition.vala \
	GtkamlCodeContext.vala \
	GtkamlCodeGenerator.vala \
	GtkamlCompiler.vala \
	GtkamlComplexAttribute.vala \
	GtkamlImplicitsResolver.vala \
	GtkamlImplicitsStore.vala \
	GtkamlMethod.vala \
	GtkamlMethodMatcher.vala \
	GtkamlParser.vala \
	GtkamlReferenceClassDefinition.vala \
	GtkamlRootClassDefinition.vala \
	GtkamlSAXParser.vala \
	GtkamlSimpleAttribute.vala \
	GtkamlState.vala \
	GtkamlStateStack.vala \
	GtkamlXmlAttribute.vala \
	GtkamlXmlNamespace.vala \
	GtkonParser.vala

gtkamlc_SOURCES = GtkamlSAXParser_start_parsing.c

nodist_gtkamlc_SOURCES = \
	gtkamlc.stamp \
	$(gtkamlc_VALASOURCES:.vala=.c)

gtkamlc.stamp: $(gtkamlc_VALASOURCES) $(top_srcdir)/vapi/config.vapi $(top_srcdir)/vapi/valaccodegen.vapi
	$(VALAC) -C $(VALAFLAGS) --vapidir $(VALA_VAPIDIR) --vapidir $(top_srcdir)/vapi --pkg valaccodegen --pkg libxml-2.0 --pkg libvala-$(VALA_VERSION) --pkg glib-2.0 --pkg gio-2.0 --pkg config $(addprefix $(srcdir)/,$(gtkamlc_VALASOURCES))
	touch $@

gtkamlc_LDADD = \
	-L$(VALA_CODEGEN_LIBDIR) \
	-lvalaccodegen \
	$(GLIB_LIBS) \
	$(GIO_LIBS) \
	$(VALA_LIBS) \
	$(LIBXML2_LIBS)

gtkamlc_LDFLAGS = \
	-Wl,-rpath,$(VALA_CODEGEN_LIBDIR)

EXTRA_DIST = $(gtkamlc_VALASOURCES) gtkamlc.h ../vapi/config.vapi ../vapi/valaccodegen.vapi ../vapi/valaccodegen.h

install-exec-hook:
	cd $(DESTDIR)$(bindir) && $(LN_S) -f gtkamlc$(EXEEXT) gtkaml$(EXEEXT)
