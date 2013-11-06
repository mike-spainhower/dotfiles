#!/bin/sh

rand_num=""
tot_words="`wc -l /usr/share/dict/words | cut -f1 -d' '`"

refresh_random () {
    rand_num=`od -An -N4 -tu4 /dev/random`
}

for i in `seq 1 4` ; do
    refresh_random
    printf `tail -$((rand_num % tot_words)) /usr/share/dict/words | head -1 | sed "s;';;g"`
    if [ $i != 4 ] ; then printf _ ; fi
done
echo