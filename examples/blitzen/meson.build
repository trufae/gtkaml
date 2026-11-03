custom_target(
  'example-blitzen-markup',
  input: 'test.gtkon',
  depend_files: gtkamlc_markup_depends,
  output: 'test.vala',
  command: [
    gtkamlc,
    '--pkg',
    'stk-1.0',
  ] + gtkamlc_markup_args + [
    '-d',
    '@OUTDIR@',
    '-V',
    '@INPUT@',
  ],
  build_by_default: true,
)
