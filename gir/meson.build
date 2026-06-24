# Compile and install gir "stubs".
# Those stubs are normally provided by gobject-introspection.

girdir = join_paths(get_option('datadir'), 'gir-1.0')
typelibdir = join_paths(get_option('libdir'), 'girepository-1.0')

gir_files = ['cairo-1.0.gir', 'freetype2-2.0.gir']

install_data(gir_files, install_dir: girdir)

gircompiler = find_program('g-ir-compiler')

girepository_dep = dependency('girepository-2.0')

girepository_girdir = girepository_dep.get_variable('girdir')

gircompiler_command = [
  gircompiler,
  '-o', '@OUTPUT@',
  '@INPUT@',
  '--includedir', meson.current_build_dir(),
  '--includedir', meson.current_source_dir(),
  '--includedir', girepository_girdir,
]

foreach gir: gir_files
  custom_target(
    input: gir,
    output: '@BASENAME@.typelib',
    command: gircompiler_command,
    install: true,
    install_dir: typelibdir,
  )
endforeach
