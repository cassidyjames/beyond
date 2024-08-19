# Beyond

**[Cassidy]’s playground for [GNOME] design experiments**

## Unreleased

Note that this is not usable yet. 😅

## What is Beyond?

Beyond is a custom configuration of [Fedora Silverblue] built with [Universal Blue], used as a playground for GNOME design experiments.

The goal is to provide an experience close to stock GNOME (as of the version shipped in the latest stable release of Fedora, e.g. GNOME 46 as of Fedora 40) with minor changes to the experience (e.g. experimental extensions or changed default settings) to test their feasibility and how they feel on real hardware.

### Changes from stock GNOME

Currently, the following changes are being tested in Beyond:

- Inter-based GNOME UI font as the default font
- Ptyxis (branded as "Terminal") as the default terminal emulator
- Light Style extension to test the new built-in Shell light style
- Auto Activities extension to make the overview more discoverable
- Incubation apps preinstalled
- Some utility Circle apps preinstalled to improve default/offline functionality

### Changes from Silverblue

Beyond removes Fedora packages from the OSTree that are unneeded or replaced by other packages/Flatpaks. For example, Fedora-installed GNOME extensions are removed, as are Fedora-specific apps and Flatpak configurations. A non-exhaustive list of these changes includes:

- Firefox package removed (in favor of GNOME Web as a Flatpak) 
- GNOME Terminal removed (in favor of Ptyxis as a Fedora package)
- GNOME classic session (and associated GNOME Shell extensions) removed

See [build.sh](./build.sh) for the full set of technical customizations made.


[Cassidy]: https://cassidyjames.com
[GNOME]: https://gnome.org
[Fedora Silverblue]: https://fedoraproject.org/atomic-desktops/silverblue/
[Universal Blue]: https://universal-blue.org
