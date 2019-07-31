#!/bin/bash -vx
# sudo apt-get installl imagemagick
# ! CAUTION : THIS WILL RESIZE ALL IMAGES FOUND RECURSIVELY INSIDE $FOLDER 

res_test=$(identify -format "%wx%h" example.jpg)
echo $res_test

# absolute path to image folder
FOLDER=$(realpath ./)

# max 
WIDTH=1800

# max 
HEIGHT=1200

#resize png or jpg to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.jpg' -o -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize png to either height or width, keeps proportions using imagemagick
#find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

#resize jpg only to either height or width, keeps proportions using imagemagick


find ${FOLDER} -iname '*.jpg' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;
find ${FOLDER} -iname '*.png' -exec convert \{} -verbose -resize $WIDTHx$HEIGHT\> \{} \;

# alternative
#mogrify -path ${FOLDER} -resize ${WIDTH}x${HEIGHT}% *.png -verbose


