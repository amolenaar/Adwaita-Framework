# Adwaita Framework for macOS

This project provides a simple way to produce a macOS Framework
with the most important GNOME components.
(at least the ones used by Gaphor)

We need some tools from Homebrew:

```sh
brew install itstool rustup cargo-c
```

Then, all can be built:

```sh
meson setup _build
meson compile -C _build
```

