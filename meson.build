# SPDX-License-Identifier: GPL-3.0-or-later
project(
  'adwaita-framework',
  version: '1.0',
  meson_version : '>= 1.1.0',
  default_options: [
    'buildtype=release',
  ]
)

introspection = get_option('introspection').enabled() ? 'enabled' : 'disabled'

# The base: GLib
subproject('libffi')
subproject('pcre2')
subproject('proxy-libintl')
subproject('zlib')
subproject('glib', default_options: [
  'introspection=' + introspection,
  'sysprof=disabled',
  'tests=false',
])

subproject('zstd')
subproject('liblzma')
subproject('libwebp')
subproject('libfyaml')
subproject('libxml2')
subproject('libjpeg-turbo')
subproject('libtiff')
subproject('libpng')
subproject('expat')
subproject('fribidi', default_options: [
  'docs=false',
  'tests=false',
])
subproject('icu')
subproject('libepoxy')

subproject('libxmlb', default_options: [ # for appstream
  'introspection=' + (introspection == 'disabled' ? 'false' : 'true'),
  'gtkdoc=false',
  'tests=false',
])
subproject('graphene', default_options: [
  'introspection=' + introspection,
  'tests=false'
])
subproject('freetype2', default_options: [
  'brotli=disabled',
  'bzip2=disabled',
  'harfbuzz=disabled',
])
subproject('pixman', default_options: [
  'demos=disabled',
  'gtk=disabled',
])
subproject('cairo', default_options: [
    'fontconfig=disabled',
    'freetype=enabled',
    'xcb=disabled',
    'xlib=disabled',
    'tests=disabled',
    'quartz=enabled',
    'tests=disabled',
    'glib=enabled',
])
subproject('harfbuzz', default_options: [
  'introspection=' + introspection,
  'tests=disabled',
  'coretext=enabled',
  'freetype=enabled',
  'cairo=enabled',
])
subproject('pango', default_options: [
    'introspection=' + introspection,
    'fontconfig=disabled',
    'cairo=enabled',
    'freetype=disabled',
    'build-testsuite=false',
    'build-examples=false',
])
subproject('gdk-pixbuf', default_options: [
    # 'glycin=enable',
    'documentation=false',
    'introspection=' + introspection,
    'relocatable=true',
    'tests=false',
])
subproject('librsvg', default_options: [
    'introspection=' + introspection,
    'rsvg-convert=disabled',
    'pixbuf=enabled',
    'avif=disabled',
    # 'pixbuf-loader=enabled', # Requires gdk-pixbuf.pc
    'docs=disabled',
    'tests=false',
])
# subproject('accesskit-c')

# GTK and friends

subproject('gtk', default_options: [
    'vulkan=disabled',
    'x11-backend=false',
    'print-cups=disabled',
    'introspection=' + introspection,
    'media-gstreamer=disabled',
    'build-testsuite=false',
    'build-examples=false',
    'build-tests=false',
])
subproject('appstream', default_options: [
    'systemd=false',
    'apidocs=false',
    'install-docs=false',
    'stemming=false',
    'svg-support=false',
    'gir=false',
    'man=false',
])
subproject('libadwaita', default_options: [
    'introspection=' + introspection,
    'vapi=false',
    'tests=false',
    'examples=true',
])
subproject('gtksourceview', default_options: [
    'introspection=' + introspection,
    'build-testsuite=false',
    'vapi=false',
])
