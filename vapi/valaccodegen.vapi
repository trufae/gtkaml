[CCode (cprefix = "Vala", lower_case_cprefix = "vala_")]
namespace Vala {
	[CCode (cname = "ValaCCodeCompiler", type_id = "vala_ccode_compiler_get_type ()", cheader_filename = "valaccodegen.h")]
	public class CCodeCompiler {
		public CCodeCompiler ();
		public void compile (Vala.CodeContext context, string? cc_command, string[] cc_options);
	}

	[CCode (cname = "ValaGDBusServerModule", type_id = "vala_gd_bus_server_module_get_type ()", cheader_filename = "valaccodegen.h")]
	public class GDBusServerModule : Vala.CodeGenerator {
		public GDBusServerModule ();
	}

	[CCode (cname = "ValaGIRWriter", type_id = "vala_gir_writer_get_type ()", cheader_filename = "valaccodegen.h")]
	public class GIRWriter : Vala.CodeVisitor {
		public GIRWriter ();
		public void write_file (Vala.CodeContext context, string directory, string gir, string gir_namespace, string gir_version, string library);
	}
}
