custom_target(
  'example-clutter-full',
  input: 'full-example.gtkon',
  depend_files: gtkamlc_markup_depends,
  output: 'full-example.vala',
  command: [
    gtkamlc,
    '--pkg',
    'gtk+-3.0',
    '--pkg',
    'clutter-gtk-1.0',
    '--pkg',
    'clutter-1.0',
    '--pkg',
    'mx-1.0',
  ] + gtkamlc_markup_args + [
    '-d',
    '@OUTDIR@',
    '-V',
    '@INPUT@',
  ],
  build_by_default: true,
)
