# 1) Get the angle from the center 90% width (ignore margins)
angle=$(magick input.tif \
  -gravity center -crop 90%x100%+0+0 +repage \
  -colorspace Gray -normalize \
  -deskew 50% \
  -format '%[deskew:angle]' info:)

echo "Angle detected: $angle"

# 2) Apply that angle to the full page and recenter to original size
magick input.tif \
  -set option:origW '%[w]' -set option:origH '%[h]' \
  -background white -alpha remove -alpha off \
  -rotate "$angle" \
  -gravity center -extent '%[origW]x%[origH]' \
  output_fixed.tif

