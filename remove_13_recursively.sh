find . -type f -name "*.mp4" | while read file; do
  dirname=$(dirname "$file")
  basename=$(basename "$file")

  # Check if the file has the pattern we want to remove
  if [[ "$basename" == *" ["* ]]; then
    # Remove everything from " [" to the end, then add back .mp4
    newname="${basename% [*}.mp4"
    mv -vn "$file" "$dirname/$newname"
  fi
done
