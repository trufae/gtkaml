python = find_program('python3')
compile_smoke = files('compile-smoke.py')

if build_gtk3_targets
  foreach test_data : [
    ['test0.gtkaml', 'test0.vala'],
    ['test4.gtkon', 'test4.vala'],
    ['test5.gtkon', 'test5.vala'],
    ['test7.gtkon', 'test7.vala'],
  ]
    markup = custom_target(
      'gtk3-smoke-' + test_data[1],
      input: test_data[0],
      depend_files: gtkamlc_markup_depends,
      output: test_data[1],
      command: [
        gtkamlc,
        '--pkg',
        'gtk+-3.0',
        '--pkg',
        'posix',
      ] + gtkamlc_markup_args + [
        '-d',
        '@OUTDIR@',
        '-V',
        '@INPUT@',
      ],
      build_by_default: true,
    )

    test(
      'gtk3-compile-' + test_data[0],
      python,
      args: [compile_smoke, gtkamlc, '--pkg', 'gtk+-3.0', '--pkg', 'posix'] + gtkamlc_markup_args + files(test_data[0]),
    )

    executable(
      'gtk3-smoke-' + test_data[0].split('.')[0],
      markup,
      dependencies: [gtk3_dep],
      vala_args: ['--pkg=posix'],
    )
  endforeach
endif

if build_gtk3_targets
  subdir('gtk3')
endif

if build_gtk4_targets
  subdir('gtk4')
endif

if build_adwaita_targets
  subdir('adwaita')
endif
