# Adwaita Framework for macOS

This project provides a simple way to produce a macOS Framework
with the most important GNOME components.
(at least the ones used by Gaphor)

We need some tools from Homebrew:

```sh
brew install rustup cargo-c
```

Some prep:

```sh
python -m venv .venv
. .venv/bin/activate
pip install meson ninja gi-docgen docutils
```

Then, all can be built:

```sh
meson setup --prefix=/opt/gtk _build
meson compile -C _build
```

## Wish list

homebrew libtiff.6.dylib
	/opt/homebrew/opt/xz/lib/liblzma.5.dylib (compatibility version 14.0.0, current version 14.1.0)
homebrew libtiff.dylib
	/opt/homebrew/opt/xz/lib/liblzma.5.dylib (compatibility version 14.0.0,

