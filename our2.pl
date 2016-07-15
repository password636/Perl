use strict;
use warnings;

sub func
{
	our $out = 2;
	print "$out\n";
	$out++;
}

func;
func;
print "$out\n";
