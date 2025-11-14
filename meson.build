# SPDX-License-Identifier: GPL-3.0-or-later
project(
  'adwaita-framework',
  version: '1.0',
  default_options: [
    'buildtype=release',
    'tests=false',
  ]
)

# libepoxy version?
# graphene version?
# fribidi -> fix version

subproject('zstd')
subproject('zlib')
subproject('libfyaml')
subproject('libxml2')
subproject('libtiff')
subproject('libffi')
subproject('libpng')
subproject('libjpeg-turbo')
subproject('expat')
subproject('fribidi')
subproject('graphene')
subproject('harfbuzz')
subproject('icu')
subproject('libepoxy')
subproject('libepoxy')
subproject('libxmlb', default_options: [ # for appstream
  'tests=false'
])
subproject('pcre2')
subproject('proxy-libintl')

subproject('pixman', default_options: [
  'demos=disabled',
  'gtk=disabled',
])
subproject('glib', default_options: [
    'introspection=enabled',
    'sysprof=disabled',
    'tests=false',
])
subproject('cairo', default_options: [
    'fontconfig=disabled',
    'xcb=disabled',
    'xlib=disabled',
    'tests=disabled',
    'quartz=enabled',
    'tests=disabled',
    'glib=enabled',
])
subproject('pango', default_options: [
    'introspection=enabled',
    'fontconfig=disabled',
    'cairo=enabled',
    'freetype=disabled',
    'build-testsuite=false',
    'build-examples=false',
])
subproject('gdk-pixbuf', default_options: [
    # 'glycin=enable',
    'documentation=false',
    'introspection=enabled',
    'relocatable=true',
    'tests=false',
])
subproject('librsvg', default_options: [
    'introspection=enabled',
    'rsvg-convert=disabled',
    'pixbuf=enabled',
    # 'pixbuf-loader=enabled', # Requires gdk-pixbuf.pc
    'tests=false',
])

# GTK and friends

subproject('accesskit-c')
subproject('gtk', default_options: [
    'vulkan=disabled',
    'x11-backend=false',
    'print-cups=disabled',
    'introspection=enabled',
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
    'introspection=enabled',
    'vapi=false',
    'tests=false',
    'examples=true',
])
subproject('gtksourceview', default_options: [
    'introspection=enabled',
    'build-testsuite=false',
    'vapi=false',
])
