use warnings;
use strict;

my @array = (1, "one", 2, "two", 3, "three");
pop @array;
print "@array\n";
shift @array;
print "@array\n";
