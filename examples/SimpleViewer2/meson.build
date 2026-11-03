simpleviewer2_markup = custom_target(
  'example-simpleviewer2-markup',
  input: 'SimpleViewer2.gtkaml',
  depend_files: gtkamlc_markup_depends,
  output: 'SimpleViewer2.vala',
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
)

executable(
  'SimpleViewer2',
  [
    simpleviewer2_markup,
    'main.vala',
  ],
  dependencies: [gtk3_dep],
  build_by_default: true,
)
