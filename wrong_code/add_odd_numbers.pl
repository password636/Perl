use warnings;
use strict;

my $sum; 
my $r;
for (1..10)
{
	$r = $_ / 2; #
	if( $r )
	{
		$sum += $r
	}
}
print "$sum\n";

