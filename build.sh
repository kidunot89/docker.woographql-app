#!/bin/bash

# Image variants
declare -a variants=(
    '7.3;5.2.2'
    '7.2;5.2.2'
    '7.1;5.2.2'
    '7.0;5.2.2'
    '5.6;4.9'
    '5.6;5.0.2'
)

for i in "${variants[@]}"; do
    IFS=';' read -ra variant <<< "$i"

    # Build tag
    tag="wp${variant[1]}-php${variant[0]}"

    # Build image
    echo "Building kidunot89/woographql-app:${tag}"
    docker build -t kidunot89/woographql-app:${tag} \
        --build-arg WP_VERSION=${variant[1]} \
        --build-arg PHP_VERSION=${variant[0]} \
        .
done

