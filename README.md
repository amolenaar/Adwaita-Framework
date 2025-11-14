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
- [x] ~~Add glycin image loader~~ Requires linux specific APIs
- [ ] Enable Vulkan GDK backend

## License

This stuff is licensed under the GNU General Public License v3 or later.
