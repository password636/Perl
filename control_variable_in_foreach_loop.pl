use strict;
use warnings;

# array element can't be the control variable of a foreach loop
my @fred;

for $fred[0] (1..10)	# error
{
	printf $fred[0];
}
