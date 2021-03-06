#!/bin/bash

cd main_dir
for i in `seq 1 500`; do
    cd "sub_${i}"
    dir=$(basename "`pwd`")
    n=${dir#sub_}
    case "$n" in
	*1)
	    sed -i '4s/.*/eat beets/' simple_file.txt
	    ;;
	*4)
	    sed -i '4s/.*/squash are great/' simple_file.txt
	    ;;
	*5)
	    sed -i '4s/.*/dogs are better than cats/' simple_file.txt
	    ;;
	*7)
	    sed -i '4s/.*/hello world/' simple_file.txt
	    ;;
	*2 | *3 | *6 | *8 | *9)
	    sed -i '4s/.*//' simple_file.txt
	    ;;
	*0)
	    sed -i '4s/.*/this looks great!/' simple_file.txt
	    ;;
    esac
    cd ..
done
cd ..
	




    
