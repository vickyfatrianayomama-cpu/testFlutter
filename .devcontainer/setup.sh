#!/usr/bin/env bash
set -e

# Install FVM
dart pub global activate fvm

# Install Flutter 3.3.28 via FVM (kalau tag ini gak ada, ya itu Flutter-nya bukan zoo bebas; cek rilis Flutter lo)
~/.pub-cache/bin/fvm install 3.3.28
~/.pub-cache/bin/fvm global 3.3.28

# PATH FVM
echo 'export PATH="$HOME/fvm/default/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$HOME/.pub-cache/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# Doctor biar cache beres
flutter --version
flutter doctor -v

# Web enable (emulator Android di Codespaces mah mimpi)
flutter config --enable-web
