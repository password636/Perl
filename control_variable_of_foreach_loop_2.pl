use strict;
use warnings;


# array element or hash element can't be the control variable
# control variable must be a simple scalar
my %hash;
$hash{name} = "lizl";
for $hash{name} (1..10)
{
	print "$hash{name}\n";
}

