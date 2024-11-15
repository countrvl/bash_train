#!/bin/bash
mkdir temp_dir
cd temp_dir
touch file1 file2 file3
echo "Файлы созданы."
rm file1 file2 file3
cd ..
rmdir temp_dir
echo "Файлы и директория удалены."
