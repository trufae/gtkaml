markup = custom_target(
  'gtk4-smoke',
  input: 'smoke.gtkaml',
  depend_files: gtkamlc_markup_depends,
  output: 'smoke.vala',
  command: [
    gtkamlc,
    '--pkg',
    'gtk4',
  ] + gtkamlc_markup_args + [
    '-d',
    '@OUTDIR@',
    '-V',
    '@INPUT@',
  ],
  build_by_default: true,
)

executable(
  'gtk4-smoke',
  markup,
  dependencies: [gtk4_dep],
)

test(
  'gtk4-compile-markup',
  python,
  args: [compile_smoke, gtkamlc, '--pkg', 'gtk4'] + gtkamlc_markup_args + files('smoke.gtkaml'),
)

test(
  'gtk4-compile-window',
  python,
  args: [compile_smoke, gtkamlc, '--pkg', 'gtk4'] + gtkamlc_markup_args + files('window.gtkaml'),
)
