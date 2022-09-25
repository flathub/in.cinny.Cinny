# Cinny desktop
[Cinny desktop](https://github.com/cinnyapp/cinny-desktop.git) is made with Tauri and built using npm and cargo packages. Cinny itself has node dependencies managed with npm as well.

## Source generation
To transform their package locks into flatpak sources, [flatpak-builder-tools](https://github.com/flatpak/flatpak-builder-tools) is used.

```sh
# Generate cinny-desktop sources for use with cargo
<path-to flatpak-builder-tools>/cargo/flatpak-cargo-generator.py -o cargo-sources.json <path-to cinny-desktop>/src-tauri/Cargo.lock

# Generate cinny and cinny-desktop sources for use with npm
flatpak-node-generator --no-requests-cache -r -o node-sources.json npm <path-to cinny-desktop>/package-lock.json
```