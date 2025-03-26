for file in *.m4a; do
  mv -vn "${file}" "${file% [*}.m4a"
done

