#!/bin/bash

# default file name
filename="eps.v2"

# get file name from parameter
if [ $1 ]; then
    filename=$1
fi

sed -e 's/¥/\\/g' -e 's/‾/~/g' $filename.tex > tmp_out.tex

# make .dvi and .pdf file
/usr/texbin/platex tmp_out.tex
/usr/texbin/pbibtex tmp_out.aux
/usr/texbin/platex tmp_out.tex
/usr/texbin/dvipdfmx -p a4 tmp_out.dvi

# preview
open tmp_out.pdf
