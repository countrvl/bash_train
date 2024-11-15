#!/bin/bash
src_dir=$1
dest_dir=$2
if [ ! -d $src_dir ]; then
    echo "Исходная директория не найдена!"
    exit 1
fi
mkdir -p $dest_dir
for file in $src_dir/*; do
    filename=$(basename "$file")
    cp "$file" "$dest_dir/${filename}_$(date +%Y%m%d)"
done
echo "Резервное копирование завершено."
