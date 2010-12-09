#!/bin/sh

for i in `ls *.svg`
do
	inkscape --export-dpi=300 --export-png $i.png  $i
done

rename 's/svg\.png/png/' *.svg.png
