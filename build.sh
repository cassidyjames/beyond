#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"


# Install/remove packages

## Remove Fedora packages that will be replaced by Flatpaks or other packages
rpm-ostree override remove \
  firefox firefox-langpacks \
  gnome-shell-extension-apps-menu gnome-shell-extension-background-logo \
  gnome-shell-extension-launch-new-instance gnome-shell-extension-places-menu \
  gnome-shell-extension-window-list \
  gnome-terminal gnome-terminal-nautilus \
  htop nvtop

## Packages that don't work as Flatpaks from Fedora repos
rpm-ostree install \
  ptyxis

