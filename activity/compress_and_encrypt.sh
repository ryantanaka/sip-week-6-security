#!/bin/bash
gzip --verbose --best *.txt
gpg --batch -c --passphrase-file pass 1.txt.gz
gpg --batch -c --passphrase-file pass 2.txt.gz
gpg --batch -c --passphrase-file pass 3.txt.gz
gpg --batch -c --passphrase-file pass 4.txt.gz
gpg --batch -c --passphrase-file pass 5.txt.gz
gpg --batch -c --passphrase-file pass 6.txt.gz
