all: SimpleViewer2

SimpleViewer2: SimpleViewer2.gtkaml main.vala
	VALA_API_VERSION="$$(valac --api-version)"; \
	VALA_CODEGEN_LIBDIR="$$(pkg-config --variable=pkglibdir libvala-$$VALA_API_VERSION)"; \
	LD_LIBRARY_PATH="$$VALA_CODEGEN_LIBDIR:$$LD_LIBRARY_PATH" ../../src/gtkamlc $(VALAFLAGS) -o $@ --pkg gtk+-3.0 --vapidir ../../markuphints $^

clean:
	rm -f SimpleViewer2
