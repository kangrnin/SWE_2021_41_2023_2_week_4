#!/bin/bash

for path in files/*.txt; do
    first_letter_lowercase=$(echo ${path:6:1} | tr '[:upper:]' '[:lower:]')
    filename=$(basename "$path")
    mkdir -p "$first_letter_lowercase"
    mv "$path" "$first_letter_lowercase/$filename"
done