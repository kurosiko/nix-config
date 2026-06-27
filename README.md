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

```bash
nix run nix-darwin -- switch --flake .#default
```

Or after the first switch:

```bash
darwin-rebuild switch --flake .#default
```

### Update flake inputs

```bash
nix flake update
darwin-rebuild switch --flake .#default
```

## Prerequisites

- [Nix](https://determinate.systems/nix-installer/) with flakes enabled
- [nix-darwin](https://github.com/LnL7/nix-darwin)
