#!/usr/bin/bash

for t in ./*.dat; do
    ./wrong1.out <$t >output.txt
    diff ${t%dat}ans output.txt
    if [[ $? != 0 ]]; then
        echo "for test $t: got different result"
        exit 1
    fi
done
