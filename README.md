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

- [ ] Introspection
- [ ] Add glycin image loader (depends on GTK?)
- [ ] Enable Vulkan GDK backend

## License

This stuff is licensed under the GNU General Public License v3 or later.


homebrew libappstream.5.dylib
	/opt/homebrew/opt/zstd/lib/libzstd.1.dylib (compatibility version 1.0.0, current version 1.5.7)
homebrew libgtk-4.1.dylib
	/opt/homebrew/opt/libtiff/lib/libtiff.6.dylib (compatibility version 9.0.0, current version 9.0.0)
	/opt/homebrew/opt/cairo/lib/libcairo-script-interpreter.2.dylib (compatibility version 2.0.0, current version 2.0.0)