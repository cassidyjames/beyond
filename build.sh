#!/bin/bash

set -ouex pipefail

RELEASE="$(rpm -E %fedora)"

# Remove Fedora packages that will be replaced by Flatpaks or other packages
rpm-ostree override remove \
  firefox firefox-langpacks \
  gnome-classic-session gnome-classic-session-xsession \
  gnome-shell-extension-apps-menu gnome-shell-extension-background-logo \
  gnome-shell-extension-launch-new-instance gnome-shell-extension-places-menu \
  gnome-shell-extension-window-list \
  gnome-terminal gnome-terminal-nautilus \
  gnome-tweaks \
  htop nvtop

# Packages that don't work as Flatpaks from Fedora repos
rpm-ostree install \
  ptyxis
