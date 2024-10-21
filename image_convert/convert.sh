set -ex

# ^ -> resize to highest of the two and keep aspect ratio
# \> -> only resize if current size is higher than new one
w=350
h=350
magick $1 \
  -quality 65 \
  -define webp:lossless=false \
  -define webp:image-hint=photo \
  -resize ${w}x${h}^\> \
  -gravity center \
  -extent ${w}x${h}\> \
  $2
