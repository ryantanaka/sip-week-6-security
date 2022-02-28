#!/bin/bash 
for f in "*.txt.gz.gpg"
do
    sha256sum $f
    gpg --batch -c --passphrase-file pass.txt $f
    gzip --verbose --decompress $f
done
