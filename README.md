# Debian/Devuan Repository for SonicDE

```sh
sudo apt-get update
sudo apt-get install -y ca-certificates curl

sudo install -m 0755 -d /usr/share/keyrings
curl -fsSL https://mrchicken.nexussfan.cz/publickey.asc | gpg --dearmor | sudo tee /usr/share/keyrings/NexusSfan.pgp > /dev/null
sudo chmod a+r /usr/share/keyrings/NexusSfan.pgp

cat <<EOF | sudo tee /etc/apt/sources.list.d/sonicde-debian.sources
Types: deb
URIs: https://sonicde-debian.github.io/debian/
Suites: main
Components: [VERSION]
Signed-By: /usr/share/keyrings/NexusSfan.pgp
EOF

sudo apt-get update
sudo apt-get install sonicde sonic-archive-keyring
```

If you are using Debian/Devuan Unstable then use `Components: unstable`
If you are using Debian/Devuan Testing then use `Components: testing`
