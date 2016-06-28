use strict;
use warnings;

sub max
{
	my $max_so_far = shift;

	for (@_)
	{
		if ($max_so_far < $_)
		{
			$max_so_far = $_;
		}
	}
	$max_so_far;
}

printf "%d\n", &max(4, 3, 20 , 34, 9 );
