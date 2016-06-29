use warnings;
use strict;

my $sum;

while(<>)
{
	$sum++ if $_ eq "\n";
}
print "$sum blank lines\n";

