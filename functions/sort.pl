use strict;
use warnings;

# sort a hash, rare but true
my %hash = ( A=>1, B=>2, C=>3, );
print sort %hash;	# 123ABC
print "\n";

# sort is sorting strings
my @numbers = sort 97..102;
print "@numbers\n";	# 100 101 102 97 98 99
