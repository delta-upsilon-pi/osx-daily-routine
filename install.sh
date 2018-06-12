#!/bin/bash

if ! [ -x "$(command -v brew)" ]; then
    echo "Brew is not installed, please fix it"
    exit 1
else
    if ! [ -x "$(command -v blueutil)" ]; then
        echo "Installing blueutil..."
        brew install blueutil
        chmod +x ./march ./siege
        cp ./{march,siege} /usr/local/bin
    fi
fi

chmod +x ./report ./restart-camera
cp ./{report,restart-camera} /usr/local/bin
