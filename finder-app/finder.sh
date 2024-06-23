#!/bin/bash

# Mendapatkan argumen
filesdir=$1
searchstr=$2

# Verifikasi argumen
if [ -z "$filesdir" ] || [ -z "$searchstr" ]; then
    echo "Both directory and search string must be provided."
    exit 1
fi

# Verifikasi direktori
if [ ! -d "$filesdir" ]; then
    echo "The provided directory does not exist."
    exit 1
fi

# Hitung file dan jumlah baris yang cocok
file_count=$(find $filesdir -type f | wc -l)
matching_line_count=$(grep -r "$searchstr" $filesdir | wc -l)

echo "The number of files are $file_count and the number of matching lines are $matching_line_count"
