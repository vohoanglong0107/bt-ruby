#!/usr/bin/env bash

if [ $# -lt 1 ] && [ $# -gt 2 ]; then
    echo "Xin nhap file bai tap va mode"
    exit 1
fi

ARG="--name bt-ruby -i --rm -v "$PWD":/usr/src/app -w /usr/src/app"
if [ $# -eq 2 ]; then
    if [ $2 = "i" ]; then
        ARG="$ARG -t"
    fi
fi


docker run $ARG ruby ruby $1