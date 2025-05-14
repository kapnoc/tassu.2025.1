
for file in `find ./assets/*.jpg -type f -size +512k`
do
	magick "$file" -strip -resize 2048x2048 -interlace Plane -gaussian-blur 0.05 -quality 85% "$file"
	magick "$file" -define jpeg:extent=512kb "$file"
done
