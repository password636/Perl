use strict;
use warnings;

my @lines;

while(<>)
{
	push @lines, $_;	
}
print reverse @lines;
