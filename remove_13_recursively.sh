find . -type f -name "*.mp4" | while read file; do
  newname="${file% [*}.mp4"
  if [ "$file" != "$newname" ]; then
    mv -vn "$file" "$newname"
  fi
done
