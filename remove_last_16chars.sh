for f in *.md; do
	[ -e "$f" ] || continue   # handles "no matches" case
	ext="${f##*.}"
	base="${f%.*}"
	[ "${#base}" -ge 16 ] || continue  # skip too-short names

	new="${base:0:${#base}-16}.${ext}"
	mv -- "$f" "$new"
done
