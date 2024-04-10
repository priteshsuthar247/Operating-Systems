echo -n "Please enter a word to search: "
read word

grep -r "$word" .
