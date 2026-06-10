#!/bin/sh

INSTALLDIR="${DESTDIR}/${MESON_INSTALL_PREFIX}"
# replace double slash in path with a single one
INSTALLDIR="${INSTALLDIR//\/\///}"

install_name_tool -change @rpath/libpng16.16.dylib \
    "${INSTALLDIR}/lib/libpng16.16.dylib" \
    "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib"
install_name_tool -change @rpath/libjpeg.8.2.2.dylib \
    "${INSTALLDIR}/lib/libjpeg.8.2.2.dylib" \
    "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib"
install_name_tool -change @rpath/libtiff.6.dylib \
    "${INSTALLDIR}/lib/libtiff.6.dylib" \
    "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib"
