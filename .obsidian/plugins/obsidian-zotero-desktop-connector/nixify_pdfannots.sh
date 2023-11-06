#! /usr/bin/env nix-shell
#! nix-shell -i bash -p patchelf

patchelf \
    --set-interpreter "$(cat ${NIX_CC}/nix-support/dynamic-linker)" \
    "./pdfannots2json-linux-x64"
