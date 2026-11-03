markup = custom_target(
  'gtk3-smoke-test4',
  input: 'test4.gtkaml',
  depend_files: gtkamlc_markup_depends,
  output: 'test4.vala',
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
  'gtk3-smoke',
  markup,
  dependencies: [gtk3_dep],
)

test(
  'gtk3-compile-markup',
  python,
  args: [compile_smoke, gtkamlc, '--pkg', 'gtk+-3.0'] + gtkamlc_markup_args + files('test4.gtkaml'),
)
