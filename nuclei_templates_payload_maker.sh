#!/bin/bash
if [ -z "$1 $2" ]
then
    echo "[example:]./af@template wordlist.txt outputfile.txt"
else
    sed -e 's/^/- "{{BaseURL}}/' $1 > $2
    sed 's/.*/&"/' $2 > new.txt
    sed -e 's/^/      /' new.txt > $2
    rm new.txt 
    echo "[*] Task compleated."
fi
