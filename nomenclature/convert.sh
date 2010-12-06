#!/bin/sh

for i in `ls *.pdf`
do
	convert $i -resample 1000x500  $i.png
done

rename 's/\.pdf\.png/\.png/' *.pdf.png 

