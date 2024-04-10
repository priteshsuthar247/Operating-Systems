echo "Executable files:"
for file in *; do
    if [[ -f "$file" && -x "$file" ]]; then
        echo "$file"
    fi
done

echo ""

echo "Directories:"
for dir in *; do
    if [[ -d "$dir" ]]; then
        echo "$dir"
    fi
done

echo ""

echo "Zero-sized files:"
for file in *; do
    if [[ -f "$file" && ! -s "$file" ]]; then
        echo "$file"
    fi
done
