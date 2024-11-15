#!/bin/bash

echo "Running hello.sh:"
./hello.sh

echo -e "\nRunning greet.sh:"
echo "TestUser" | ./greet.sh

echo -e "\nRunning check_number.sh:"
echo "-5" | ./check_number.sh
echo "0" | ./check_number.sh
echo "5" | ./check_number.sh

echo -e "\nRunning countdown.sh:"
./countdown.sh 5

echo -e "\nRunning file_manager.sh:"
./file_manager.sh

echo -e "\nRunning sum.sh:"
./sum.sh 5 10

echo -e "\nRunning read_file.sh:"
echo -e "Line1\nLine2" > testfile.txt
./read_file.sh testfile.txt
rm testfile.txt

echo -e "\nRunning replace_text.sh:"
echo -e "Hello old_word. Bye old_word." > replace_test.txt
./replace_text.sh replace_test.txt old_word new_word
cat replace_test.txt
rm replace_test.txt

echo -e "\nRunning backup.sh:"
mkdir test_src && echo "File content" > test_src/testfile.txt
./backup.sh test_src test_backup
ls test_backup
rm -r test_src test_backup

echo -e "\nRunning math_operations.sh:"
echo -e "15\n5\n+" | ./math_operations.sh
echo -e "15\n5\n-" | ./math_operations.sh
echo -e "15\n5\n*" | ./math_operations.sh
echo -e "15\n5\n/" | ./math_operations.sh
