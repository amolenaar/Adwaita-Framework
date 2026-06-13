## TODO: compile cairo-1.0.gir freetype2-2.0.gir
# Compile and install gir "stubs".
# Those stubs are normally provided by gobject-introspection.

# gir_files = [
#   {'name': 'freetype2', 'file': 'freetype2-2.0.gir' },
#   {'name': 'cairo', 'file': 'cairo-1.0.gir'},
# ]

girdir = join_paths(get_option('datadir'), 'gir-1.0')
typelibdir = join_paths(get_option('libdir'), 'girepository-1.0')

gir_files = ['cairo-1.0.gir', 'freetype2-2.0.gir']

# install_gir_files = []
# foreach gir: gir_files
#   install_gir_files += gir
# endforeach

install_data(gir_files, install_dir: girdir)

gircompiler = find_program('g-ir-compiler')

gircompiler_command = [
  gircompiler,
  '-o', '@OUTPUT@',
  '@INPUT@',
  '--includedir', meson.current_build_dir(),
  '--includedir', meson.current_source_dir(),
]

typelibs = []
foreach gir: gir_files
  typelibs += custom_target(
    input: gir,
    output: '@BASENAME@.typelib',
    command: gircompiler_command,
    install: true,
    install_dir: typelibdir,
  )
endforeach
