use strict;
use warnings;

my $t = 
{
	myVar => {'a'=>1, 'b'=>2},
};

print $t->{myVar}->{a};
