use warnings;
use strict;

# modulus operator %
my $fred = 10.1 % 3.7; # same as 10 % 3
printf "$fred\n";

# range operator ..
my @fred = 1.3 .. 10.9;	# 1 .. 10
printf "%d elements\n", scalar @fred;

# string repetition operator x
my $barney = "b" x 4.9;	# 4
printf "$barney\n";
$barney = "b" x 0.7;	# 0
printf "$barney\n";

# array subscript
printf "$fred[1.9]\n";	# $fred[1]

# printf %d ('d'ecimal integer)
printf "%d\n", 5.9;	# 5
