#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
    echo "Brew is not installed, please fix it"
    exit 1
else
    if ! [ -x "$(command -v blueutil)" ]; then
        echo "Installing blueutil..."
        brew install blueutil
    fi
fi

chmod +x ./report ./march ./siege
cp ./{report,march,siege} /usr/local/bin
