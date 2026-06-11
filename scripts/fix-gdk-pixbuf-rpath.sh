#!/bin/sh

INSTALLDIR="${DESTDIR}/${MESON_INSTALL_PREFIX}"
# replace double slash in path with a single one
INSTALLDIR="${INSTALLDIR//\/\///}"

otool -L "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib" | \
grep @rpath | cut -f 1 -d ' ' | xargs -L 1 basename | \
while read LIB
do
    install_name_tool -change @rpath/$LIB \
        "${INSTALLDIR}/lib/$LIB" \
        "${INSTALLDIR}/lib/libgdk_pixbuf-2.0.0.dylib"
done
