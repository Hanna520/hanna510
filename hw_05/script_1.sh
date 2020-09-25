#!/bin/bash

mkdir main_dir
cd main_dir
for i in `seq 1 500`; do
    mkdir sub_${i}
    cd sub_${i}
    echo "line 1 \n line 2 \n line 3\n line 4\n line 5" > simple_file.txt
    cd ..
done
cd ..
