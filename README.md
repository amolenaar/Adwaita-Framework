# Adwaita Framework for macOS

This project provides a simple way to build [GTK](https://www.gtk.org/)
and [libadwaita](https://gnome.pages.gitlab.gnome.org/libadwaita/) on macOS.

We need some tools from Homebrew:

```sh
brew install cargo-c gobject-introspection
```

Then, all can be built:

```sh
meson setup --prefix=/opt/adwaita _build
meson compile -C _build
```

To disable introspection (typelib) to be build, add the option `-Dintrospection=disabled` to the `meson setup` command.

## Wish list

- [x] Introspection
- [ ] Add glycin image loader
- [ ] Enable Vulkan GDK backend
- [x] Enable Accesskit

## License

This stuff is licensed under the GNU General Public License v3 or later.
