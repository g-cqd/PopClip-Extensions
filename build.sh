#!/bin/bash

cd ./src;

function __build__() {
    echo "Building $1...";
    if [ -d "../build/$1.popclipextz" ]; then
        rm -rf "../build/$1.popclipextz";
    fi
    cp -r "./$1" "../build/$1.popclipext";
    if ! [ -d "../build" ]; then
        mkdir -p "../build";
    fi
    cd ../build;
    zip -9 -q -r "$1.zip" "$1.popclipext";
    mv "$1.zip" "$1.popclipextz";
    rm -rf "$1.popclipext";
    echo "$1.popclipextz has been built.";
}

if [ $# -eq 0 ]; then
    for dir in *; do
        __build__ $dir;
    done
else
    for arg in "$@"
    do
        if [ -d "./$arg" ]; then
            __build__ "$arg";
        else
            echo "Extension source for $arg has not been found.";
        fi
    done
fi
