#!/bin/bash



file=$1
if [[ "$file" = /* ]]; then
    filepath=${file%/*}
    filename=${file##*/}
    filebase=${filename%.*}    
    filebase=$filepath/$filebase
else
    filebase=${file%.*}    
    filebase=$filebase
fi

echo "Working on file : $filebase"

fslmaths $file -Tstd ${filebase}_tstd.nii.gz
fslmaths $filebase.nii.gz -Tmean ${filebase}_tmean.nii.gz
fslmaths ${filebase}_tmean.nii.gz -div ${filebase}_tstd.nii.gz ${filebase}_tsnr.nii.gz


