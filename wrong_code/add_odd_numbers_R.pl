use warnings;
use strict;

my $sum; 
for (1..10)
{
	if( $_ % 2 )
	{
		$sum += $_;
	}
}
print "$sum\n";

