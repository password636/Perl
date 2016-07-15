use strict;
use warnings;

our $out = 1;

sub func
{
	our $out = 2;
	$out++;
	print "$out\n";
}

func
func
print "$out\n";
