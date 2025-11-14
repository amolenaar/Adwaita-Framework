#!/bin/sh
# This small script can be executed after everything is installed.
# It will recompile librsvg with pixbuf loader enabled.

meson setup --prefix=$1 --pkg-config-path=$1/lib/pkgconfig --wipe \
    -Dpixbuf=enabled -Davif=disabled -Dpixbuf-loader=enabled -Ddocs=disabled -Dtests=false
    _build_rsvg subprojects/librsvg
meson install -C _build_rsvg
