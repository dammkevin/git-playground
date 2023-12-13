#! /usr/bin/env gawk -f

BEGIN {
    FS='\t'
    count = 0
    cylinder = 0

}

if ($5 < 30000 || $6 = 4) {
    count++
    cylinder++
}


END {
    average = count / cylinder
    print "inexpensive count = ", count ;
    print "average = ", average ;
