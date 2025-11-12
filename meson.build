project(
  'libadwaita-framework',
  version: '1.0',
  default_options: [
    'wrap_mode=forcefallback',
    # glib
    'glib:introspection=disabled',
    'glib:sysprof=disabled',
    'glib:tests=false',
    # cairo
    # cairo: to do patch out cairo-scripts subdir, as it depends on lzo
    'cairo:fontconfig=disabled',
    'cairo:xcb=disabled',
    'cairo:xlib=disabled',
    'cairo:tests=disabled',
    'cairo:quartz=enabled',
    'cairo:tests=disabled',
    'cairo:glib=enabled',
    # pixman
    'pixman:demos=disabled',
    'pixman:gtk=disabled',
    # pango
    'pango:introspection=disabled',
    'pango:fontconfig=disabled',
    'pango:cairo=enabled',
    'pango:freetype=disabled',
    'pango:build-testsuite=false',
    'pango:build-examples=false',
    # glycin
    # todo: build glycin first
    # gdk-pixbuf
    # 'gdk-pixbuf:glycin=enable',
    'gdk-pixbuf:documentation=false',
    'gdk-pixbuf:introspection=disabled',
    'gdk-pixbuf:relocatable=true',
    'gdk-pixbuf:tests=false',
    # librsvg
    'librsvg:introspection=disabled',
    # gtk
    # gtk: to do disable test suites
    'gtk:x11-backend=false',
    'gtk:print-cups=disabled',
    'gtk:introspection=disabled',
    'gtk:media-gstreamer=disabled',
    # libadwaita
    'libadwaita:vapi=false',
    'libadwaita:introspection=disabled',
    # gtksourceview:
    'gtksourceview:build-testsuite=false',
    'gtksourceview:vapi=false',
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

# librsvg >= 2.48.0 - done
# pango -> fix version
# gtk -> fix version
# libepoxy version?
# graphene version?
# glib -> fix version
# fribidi -> fix version
# Build gdk-pixbuf before we build librsvg?

subproject('libfyaml')
subproject('glib')
subproject('cairo')
subproject('pango')
subproject('gdk-pixbuf')
subproject('librsvg')
subproject('gtk')
subproject('libadwaita')
subproject('gtksourceview')
