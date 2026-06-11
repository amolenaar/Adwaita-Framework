#!/bin/sh

INSTALLDIR="${DESTDIR}/${MESON_INSTALL_PREFIX}"

otool -L "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib" | \
grep @rpath | cut -f 1 -d ' ' | xargs -L 1 basename | \
while read LIB
do
    install_name_tool -change @rpath/$LIB \
        "${MESON_INSTALL_PREFIX}/lib/$LIB" \
        "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib"
done
