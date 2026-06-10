#!/bin/sh

install_name_tool -change @rpath/libpng16.16.dylib \
    "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/libpng16.16.dylib" \
    "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/libgdk_pixbuf-2.0.0.dylib"
install_name_tool -change @rpath/libjpeg.8.2.2.dylib \
    "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/libjpeg.8.2.2.dylib" \
    "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/libgdk_pixbuf-2.0.0.dylib"

"${DESTDIR}/${MESON_INSTALL_PREFIX}/bin/gdk-pixbuf-query-loaders" > "${DESTDIR}/${MESON_INSTALL_PREFIX}/lib/gdk-pixbuf-2.0/2.10.0/loaders.cache"
