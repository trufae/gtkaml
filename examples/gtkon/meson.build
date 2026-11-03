foreach example_name : [
  'gtk-hello',
  'search-dialog',
  'sync-sample',
  'treeview-liststore-sample',
]
  markup = custom_target(
    'example-gtkon-' + example_name,
    input: example_name + '.gtkon',
    depend_files: gtkamlc_markup_depends,
    output: example_name + '.vala',
    command: [
      gtkamlc,
      '--pkg',
      'gtk+-3.0',
    ] + gtkamlc_markup_args + [
      '-d',
      '@OUTDIR@',
      '-V',
      '@INPUT@',
    ],
    build_by_default: true,
  )

  executable(
    'example-gtkon-' + example_name,
    markup,
    dependencies: [gtk3_dep],
  )
endforeach
