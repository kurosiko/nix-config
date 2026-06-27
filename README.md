# nix-config

nix-darwin system configuration for macOS.

## Structure

| File | Purpose |
|------|---------|
| `flake.nix` | Entry point — defines flake inputs and darwin configuration |
| `system.nix` | System packages, fonts, Nix settings |
| `mac.nix` | macOS defaults (Dock, Finder, Trackpad) and programs (zsh, direnv) |
| `yabai.nix` | [yabai](https://github.com/koekeishiya/yabai) tiling window manager config |
| `skhd.nix` | [skhd](https://github.com/koekeishiya/skhd) hotkey daemon config |

## Usage

### Build and switch (apply changes)

```bash
nix run nix-darwin -- switch --flake .#WindowsVista
```

### Rebuild on config change

```bash
nix run nix-darwin -- switch --flake .#WindowsVista
```

### Update flake inputs

```bash
nix flake update
nix run nix-darwin -- switch --flake .#WindowsVista
```

## Prerequisites

- [Nix](https://determinate.systems/nix-installer/) with flakes enabled
- [nix-darwin](https://github.com/LnL7/nix-darwin)

## Hostname

The current darwin configuration is defined for host `WindowsVista`. Change it in `flake.nix` to match your machine's hostname (`scutil --get LocalHostName`).
