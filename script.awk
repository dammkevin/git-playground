#! /usr/bin/env gawk -f

BEGIN {
    FS = ","
    count = 0;
    cylinder = 0;
    price = 0;
}

($4 < 30000) {
    count++
}

($6 == 4) {
    cylinder++;
    price += $4
}


END {
    average = price / cylinder;
    {print "inexpensive count = ", count}
    {print "average = ", average}
    {print "cylinder count = ", cylinder}
    {print "price = ", price}
}
