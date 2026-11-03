#!/bin/sh
set -eu

srcdir=$(dirname "$0")
autoreconf --force --install "$srcdir"

if test -z "${NOCONFIGURE:-}"; then
	"$srcdir/configure" --enable-maintainer-mode "$@"
fi
