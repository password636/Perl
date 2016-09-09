use strict;
use warnings;


my @array = qw?0b10 12 0x
f \ \\ \' \/?;
print "@array\n";

my @array2 = qw/0b10 12 0x
f \ \\ \' \//;
print "@array2\n";

my @array1 = (0b10, 12, 0xf);
print "@array1\n";

