#!/usr/bin/bash

for t in ./*.dat; do
    echo "$t ${t%dat}"
    ./correct.out <$t >${t%dat}ans
done
