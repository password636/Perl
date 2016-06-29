use strict;
use warnings;

# just like single-quoted string literal, two types of escape sequences
# Any character stands for itself except \\ and \delimiter
my @array = qw ( a \\ \n $fred \( \) @bb );
print $array[1], "\n";
print $array[2], "\n";
print $array[3], "\n";
print $array[4], "\n";
print $array[5], "\n";
print $array[6], "\n";

# @array = list context
my @wilma = undef;	# gets (undef), not empty list
printf "%d elements\n", scalar @wilma;

my @fred = "hello";	# totally legal, gets ("hello")
print "$fred[0]\n";


