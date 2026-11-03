int main (string[] args) {
	Gtk.init (ref args);
	var viewer = new SimpleViewer2 ();
	if (args.length > 1)
		viewer.loadFile (args[1]);
	viewer.show_all ();
	Gtk.main ();
	return 0;
}
