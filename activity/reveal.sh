#!/bin/bash 
for f in $(find . -name "*.txt.gz.gpg");
do
    echo $f
    compressed_result=$(echo $f | sed "s/\.gpg//") 
    final_result=$(echo $f | sed "s/\.gz\.gpg//")
    sha256sum $f;
    gpg --batch --decrypt --passphrase-file pass.txt --output $compressed_result $f;
    gzip --verbose --decompress $compressed_result;
    cat $final_result
done
