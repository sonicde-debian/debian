# testing
reprepro -C testing includedeb main ~/SonicDEDebianRemote/debian_testing-packages-amd64/*.deb
reprepro -C testing includedeb main ~/SonicDEDebianRemote/debian_testing-packages-arm64/*.deb
reprepro -C testing includedeb main ~/Debian/Projects/nexussfan-keyring.deb
reprepro -C testing includedeb main ~/Debian/Projects/sonic-keyring.deb
# unstable
reprepro -C unstable includedeb main ~/SonicDEDebianRemote/debian_unstable-packages-amd64/*.deb
reprepro -C unstable includedeb main ~/SonicDEDebianRemote/debian_unstable-packages-arm64/*.deb
reprepro -C unstable includedeb main ~/Debian/Projects/nexussfan-keyring.deb
reprepro -C unstable includedeb main ~/Debian/Projects/sonic-keyring.deb

reprepro export
reprepro deleteunreferenced
reprepro export
