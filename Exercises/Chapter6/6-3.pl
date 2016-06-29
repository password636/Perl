use strict;
use warnings;

my $width;
for (keys %ENV)
{
	if(length $_ > $width)
	{
		$width = length $_;
	}
}

for (sort keys %ENV)
{
	printf "%${width}s\t%-s\n", $_, $ENV{$_};
}
