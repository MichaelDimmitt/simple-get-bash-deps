# bash-static-analysis-tool-that-finds-all-keywords-and-runs-them-with-which

ignore list contains all bash language words

regex

get bash deps blind.

1. use regex Any text not contained in a single quote or double quote. (will miss some double quote values)
2. to build the list
3. and then iterate and tell which results

4. regex  
`/[\'\"](.*?)[\'\"]/g`  
https://stackoverflow.com/a/171483/5283424

5. grep wont work. since it returns lines.

6. grep might work if we split everything to newlines.  
`cat get-mp3-data.bash | grep -v '#' | grep -v 'echo' | tr ' ' '\n'`

welp, I tried:
```
cat get-mp3-data.bash | grep -v '#'  | tr ' ' '\n' | grep -v -E "[\'\"](.*?)[\'\"]" | grep -v -E 'if|then|fi|reset|}|\]|\[|else|cat|rm|echo'
```
