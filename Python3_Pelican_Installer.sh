#!/bin/sh
# Author: Amarnath (@digitallyamar)

pip3 install pelican markdown


mkdir Pelican_Demo
cd Pelican_Demo

pelican-quickstart

echo "Title: My First Review" >> content/keyboard-review.md
echo "Date: 2019-02-05 05:10" >> content/keyboard-review.md
echo "Category: Review" >> content/keyboard-review.md
echo "\n" >> content/keyboard-review.md
echo "Title: My First Review using Pelican" >> content/keyboard-review.md

pelican content

#Open newly created html content in your default browser
echo "Your website is now LIVE at http://localhost:8000/"

pelican --listen
