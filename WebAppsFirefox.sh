#!/bin/bash
# Enable the repository
echo -e "[firefoxpwa]\nname=FirefoxPWA\nbaseurl=https://packagecloud.io/filips/FirefoxPWA/rpm_any/rpm_any/\$basearch\ngpgkey=https://packagecloud.io/filips/FirefoxPWA/gpgkey\nrepo_gpgcheck=1\npkg_gpgcheck=0\nenabled=1\nautorefresh=1\ntype=rpm-md" | sudo tee /etc/zypp/repos.d/firefoxpwa.repo

# Import GPG key and update Zypper cache
sudo zypper --gpg-auto-import-keys refresh firefoxpwa

# Install the package
sudo zypper install firefoxpwa
