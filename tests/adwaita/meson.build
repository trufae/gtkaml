markup = custom_target(
  'adwaita-smoke',
  input: 'smoke.gtkaml',
  depend_files: gtkamlc_markup_depends,
  output: 'smoke.vala',
  command: [
    gtkamlc,
    '--pkg',
    'gtk4',
    '--pkg',
    'libadwaita-1',
  ] + gtkamlc_markup_args + [
    '-d',
    '@OUTDIR@',
    '-V',
    '@INPUT@',
  ],
  build_by_default: true,
)

executable(
  'adwaita-smoke',
  markup,
  dependencies: [adwaita_dep],
  vala_args: ['--vapidir=' + adwaita_dep.get_variable(pkgconfig: 'prefix') / 'share/vala/vapi'],
)

test(
  'adwaita-compile-markup',
  python,
  args: [compile_smoke, gtkamlc, '--pkg', 'gtk4', '--pkg', 'libadwaita-1'] + gtkamlc_markup_args + files('smoke.gtkaml'),
)
