# SPDX-License-Identifier: GPL-3.0-or-later
project(
  'libadwaita-framework',
  version: '1.0',
  default_options: [
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
  ]
)

# libepoxy version?
# graphene version?
# fribidi -> fix version

subproject('libfyaml')
subproject('libxml2')
subproject('glib', default_options: [
    'introspection=disabled',
    'sysprof=disabled',
    'tests=false'
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
    'introspection=disabled',
    'fontconfig=disabled',
    'cairo=enabled',
    'freetype=disabled',
    'build-testsuite=false',
    'build-examples=false',
])
subproject('gdk-pixbuf', default_options: [
    # 'glycin=enable',
    'documentation=false',
    'introspection=disabled',
    'relocatable=true',
    'tests=false',
])
subproject('librsvg', default_options: [
    # 'introspection=disabled',
    'rsvg-convert=disabled',
    'rsvg-view-3=disabled',
])
subproject('gtk', default_options: [
    'vulkan=disabled',
    'x11-backend=false',
    'print-cups=disabled',
    'introspection=disabled',
    'media-gstreamer=disabled',
    'build-testsuite=false',
    'build-examples=false',
    'build-tests=false',
])
subproject('libadwaita', default_options: [
    'vapi=false',
    'introspection=disabled',
    'tests=false',
    'examples=true',
])
subproject('gtksourceview', default_options: [
    'build-testsuite=false',
    'vapi=false',
])
