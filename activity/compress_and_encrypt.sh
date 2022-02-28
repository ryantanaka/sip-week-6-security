#!/bin/bash
for f in "*.txt"
do
    gzip --verbose --best $f
    gpg --batch -c --passphrase-file pass.txt $f
done
