echo -n "Please enter path to the directory: "
read directory

echo -n "Please enter the filename: "
read filename

result=$(find "$directory" -name "$filename")

if [ -z "$result" ]; then
    echo "File not found."
else
    echo "File found: $result"
fi
