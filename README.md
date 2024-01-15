# A simple script to list potential dependencies in a bash/shell file

## This script does the following
1. takes a bash script and puts every word on a newline.
2. removes common commands by using grep -v on result of compgen.
3. splits on ( . because some commands are in subshells.
4. removes special characters and any variables that present next to a dollar sign.
5. removes ad hoc bash commands like "if" "then", manually done for now.
6. uses sort and uniq combination to remove duplicate words
7. puts all on one line for the caller to review.

## Future work:
1. accept path to the file/directory under review
2. add logic to make directories and subdirectories work (i.e. `find` and `read`


