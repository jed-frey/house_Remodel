#!/usr/bin/env bash

echo "# Ideas"
for i in $(ls .img/); do echo '![](.img/'"${i})"''; done
