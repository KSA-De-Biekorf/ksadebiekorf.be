files="input/*"
for file in $files; do
  f="${file##*/}"
  sh convert.sh $file "output/${f%.*}.webp"
done
