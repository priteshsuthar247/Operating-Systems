echo -n "Please enter the filename: "
read filename

result=$(find /home/pritesh/ -name "$filename" 2>/dev/null)

if [ -z "$result" ]; then
    echo "No file, directory, or device file with the name '$filename' found in /home/pritesh/."
else
    echo -n "Found the following in: "
    echo "$result"
fi
