#!/bin/bash 
for f in $(find . -name "*.txt.gz.gpg" | sort);
do
    echo "################################################################"
    echo $f
    compressed_result=$(echo $f | sed "s/\.gpg//") 
    final_result=$(echo $f | sed "s/\.gz\.gpg//")
    sha256sum $f;
    gpg --batch --decrypt --passphrase-file pass --output $compressed_result $f;
    ls -alh $compressed_result
    gzip --verbose --decompress $compressed_result;
    ls -alh $final_result
    cat $final_result
done
