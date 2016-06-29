use strict;
use warnings;

my %lizl = (
	name => "LiZongliang",
	gender => "Male",
	height => "170",
);

# the only to use each is in a while loop
while (my ($key, $value) = each %lizl)
{
	print "$key $value\n";
}
