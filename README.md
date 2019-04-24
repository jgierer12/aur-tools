# AUR Tools

Tools for maintaining [Arch User Repository](https://aur.archlinux.org/)
packages.

Dependencies:

- Arch-based system
- fish
- yay (optional but recommended)

## Installation

Using [fisher](https://github.com/jorgebucaran/fisher):

```fish
fisher add jgierer12/aur-tools
```

## Functions

### `aur_clean`

Cleans build artifacts such as the `src` and `pkg` dirs as well as any
downloaded source archives.

### `aur_build`

Updates checksums and `.SRCINFO`, then builds the package.

### `aur_test`

Checks build files with `namcap` and prints instructions for manual testing.
