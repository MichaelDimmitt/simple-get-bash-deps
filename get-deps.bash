
echo ;
echo potential dependencies: ;
echo -n "  ";

filename='../traverse-get-mp3-metadata/get-mp3-data.bash'

compgenItems=$(compgen -b  | tr "\n" "|" | rev | cut -c2- | rev | tr "\|" "\n" | grep -x '[[:alpha:]]*' | tr "\n" "|" | rev | cut -c2- | rev)

cat $filename  | 
  grep -vE '#|echo \"' |
  tr " " "\n" | tr -s '\n' | tr "\(" "\n" |
  grep -x '[[:alpha:]]*' | 
  grep -v -E "$compgenItems"  |
  grep -vE "if|then|else|fi|col|row|as|done|while|rm|cat|add|length|quiet|do|map|cp|v" |
  sort | uniq |
  tr "\n" " ";
echo ;

# combine the above with `find . -name '*sh'` and `read` to evaluate the whole codebase.
# may need to combine with a common variables file delimited by newlines or '|' characters.
