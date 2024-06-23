#!/bin/bash

# Mendapatkan argumen
writefile=$1
writestr=$2

# Verifikasi argumen
if [ -z "$writefile" ] || [ -z "$writestr" ]; then
    echo "Both file path and text string must be provided."
    exit 1
fi

# Membuat direktori jika perlu
mkdir -p $(dirname "$writefile")

# Mencoba menulis ke file
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Failed to write to file."
    exit 1
fi
