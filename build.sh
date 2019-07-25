#!/bin/bash

# Image variants
declare -a variants=(
    '5.2;7.3'
    '5.2;7.2'
    '5.2;7.1'
    '5.1;7.3'
    '5.1;7.2'
    '5.1;7.1'
    '5.0;7.3'
    '5.0;7.2'
    '5.0;7.1'
    '5.0;7.0'
    '5.0;5.6'
    '4.9;7.2'
    '4.9;7.1'
    '4.9;7.0'
    '4.9;5.6'
)

for i in "${variants[@]}"; do
    IFS=';' read -ra variant <<< "$i"

    # Build tag
    tag="wp${variant[0]}-php${variant[1]}"

    # Build image
    echo "Building kidunot89/woographql-app:${tag}"
    docker build -t kidunot89/woographql-app:${tag} \
        --build-arg WP_VERSION=${variant[0]} \
        --build-arg PHP_VERSION=${variant[1]} \
        .

done

