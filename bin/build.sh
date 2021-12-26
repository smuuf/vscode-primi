#!/bin/bash

cd `dirname $0`/..

if ! command -v npm &> /dev/null; then
    echo "Error: npm command (Node package manager) not found"
    exit
fi

if ! command -v vsce &> /dev/null; then
    echo "Error: vsce command (Visual Studio Code Extension Manager) not found"
    exit
fi

vsce package -o ./build
