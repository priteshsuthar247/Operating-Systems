echo -n "Please enter the first filename: "
read file1
echo -n "Please enter the second filename: "
read file2

if cmp -s "$file1" "$file2"; then
    echo "The files are the same. Deleting the first file."
    rm "$file1"
else
    echo "The files are different. Merging them into a new file."
    cat "$file1" "$file2" > merged_file.txt
fi
