#!/bin/bash
#
# Minifies images
# Works on Ubuntu 16.04


# Check tools
which jpegoptim >/dev/null || sudo apt install jpegoptim
which exiftool >/dev/null || sudo apt install libimage-exiftool-perl
which optipng >/dev/null || sudo apt install optipng

# Manage metadata
exiftool -r -overwrite_original_in_place -gps:all= original-images/*

# Start with originals
rm -v htdocs/images/*
cp -v original-images/* htdocs/images/

# Compress
jpegoptim --size="10%" htdocs/images/*.jpg
optipng -o5 htdocs/images/*png

# Create favicon from logo
convert original-images/minecraft-anarchy-logo.png -bordercolor white -border 0 \
      \( -clone 0 -resize 16x16 \) \
      \( -clone 0 -resize 32x32 \) \
      \( -clone 0 -resize 48x48 \) \
      \( -clone 0 -resize 64x64 \) \
      -delete 0 -alpha off -colors 256 favicon.ico
