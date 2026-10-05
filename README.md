# ops-scripts

Shell scripts for IT operations tasks, built while learning bash.

## linecount.sh

Counts the lines in one or more files and prints a total.

    ./linecount.sh <file>...

Example:

    $ ./linecount.sh README.md test.txt
    README.md: 0
    test.txt: 3
    Total: 3

Exits with status 1 if no files are given or a file doesn't exist.
