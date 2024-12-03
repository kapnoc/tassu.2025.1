
for file in `find ./assets/*.jpg -type f -size +512k`
do
	convert "$file" -define jpeg:extent=512kb "$file"
done
