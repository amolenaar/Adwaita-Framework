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
pip install meson ninja gi-docgen docutils itstool
```

Then, all can be built:

```sh
meson setup --prefix=/opt/gtk _build
meson compile -C _build
```

- [ ] Add glycin image loader (depends on GTK?)
- [ ] Enable Vulkan GDK backend
