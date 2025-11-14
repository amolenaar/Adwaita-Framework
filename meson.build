# SPDX-License-Identifier: GPL-3.0-or-later
project(
  'libadwaita-framework',
  version: '1.0',
  default_options: [
    'buildtype=release',
    'wrap_mode=forcefallback',
    # 'force_fallback_for=cairo,gtk,libadwaita,gtksourceview',
    # pixman
    'pixman:demos=disabled',
    'pixman:gtk=disabled',
    # glycin
    # todo: build glycin first
    # appstream
    # NB. Homebrew has another patch
    'appstream:systemd=false',
    'appstream:apidocs=false',
    'appstream:install-docs=false',
    'appstream:stemming=false',
    'appstream:svg-support=false',
    'appstream:gir=false',
    'appstream:man=false',
    # libxmlb
    'libxmlb:tests=false',
  ]
)

# libepoxy version?
# graphene version?
# fribidi -> fix version

subproject('libfyaml')
subproject('libxml2')
subproject('gobject-introspection', default_options: [
  'cairo=disabled',
  'tests=false',
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
subproject('libadwaita', default_options: [
    'vapi=false',
    'introspection=enabled',
    'tests=false',
    'examples=true',
])
subproject('gtksourceview', default_options: [
    'build-testsuite=false',
    'vapi=false',
])
