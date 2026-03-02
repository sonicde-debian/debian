# Debian/Devuan Repository for SonicDE

This repository provides [SonicDE](https://github.com/Sonic-DE) third-party amd64 and arm64 binary packages for [Debian](https://debian.org)-based distributions. It is known to work with [Debian](https://www.debian.org) and [Devuan](https://www.devuan.org).

## Adding the Package Signing Key to Apt

First ensure your system is up to date and the necessary utility packages are installed:

```sh
sudo apt-get update
sudo apt-get install -y ca-certificates curl
```

Then add the public key of the [OpenPGP](https://wiki.archlinux.org/title/OpenPGP) key used to [sign the packages](https://www.debian.org/doc/manuals/securing-debian-manual/deb-pack-sign.en.html) of this repository to the system's keyring:

```sh
sudo install -m 0755 -d /usr/share/keyrings
curl -fsSL https://mrchicken.nexussfan.cz/publickey.asc | gpg --dearmor | sudo tee /usr/share/keyrings/NexusSfan.pgp > /dev/null
sudo chmod a+r /usr/share/keyrings/NexusSfan.pgp
```

## Adding the Repository to Apt

Once you have retrieved the public key, add an entry for the SonicDE repository by adding the following text to the file `/etc/apt/sources.list.d/sonicde-debian.sources`. If you are using Debian/Devuan Unstable, please replace the `[VERSION-PLACEHOLDER]` with `unstable`. For Debian/Devuan Testing, please use `testing`.

```sh
cat <<EOF | sudo tee /etc/apt/sources.list.d/sonicde-debian.sources
Types: deb
URIs: https://sonicde-debian.github.io/debian/
Suites: main
Components: [VERSION-PLACEHOLDER]
Signed-By: /usr/share/keyrings/NexusSfan.pgp
EOF
```

## Installing SonicDE

Update your package sources once again and install `sonicde` and its keyring:

```sh
sudo apt-get update
sudo apt-get install sonicde sonic-archive-keyring
```

## Contact

Please report any issues with this repository at [Issues · sonicde-debian/debian](https://github.com/sonicde-debian/debian/issues). In case you need help, want to report success, or want to talk about other aspects of the build, just join the SonicDE chats as listed at [SonicDE - GitHub](https://github.com/Sonic-DE) or go to [Sonic-DE · Discussions · GitHub](https://github.com/orgs/Sonic-DE/discussions).
