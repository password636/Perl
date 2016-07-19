use strict;
use warnings;

my $out = 1;

sub func
{
	$out = 2;
#	$out++;
	print "$out\n";
}

func;
func;
func;
print "$out\n";
