#!/bin/bash

source=/home/kopiykovskay/Documents/source
dest=/home/kopiykovskay/Documents/destination

for file in $(find $source -printf "%P\n") ; do
    if [ -a $dest/$file ] ; then
        if [ $source/$file -nt $dest/$file ] ; then



        echo "Newer file"
        cp -r $source/$file $dest/$file 
        else 
        echo "File $file exists, skipping. "
        fi
        else 
        echo "$file is being copied over to $dest"
        cp -r $source/$file $dest/$file
        fi
        done
    
    
