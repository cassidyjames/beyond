#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


# Install/remove packages

## Remove Fedora packages that will be replaced by Flatpaks or other packages
rpm-ostree override remove \

  # Replaced by GNOME Web/can install Firefox from Flatpak
  firefox firefox-langpacks \

  # We don't need a system extension for a logo.. or other random things
  gnome-shell-extension-apps-menu gnome-shell-extension-background-logo \
  gnome-shell-extension-launch-new-instance gnome-shell-extension-places-menu \
  gnome-shell-extension-window-list \

  # Replaced by Ptyxis
  gnome-terminal gnome-terminal-nautilus \

  # Create ugly .desktop files for minimal value
  htop nvtop

## Packages that don't work as Flatpaks from Fedora repos
rpm-ostree install \
  ptyxis

