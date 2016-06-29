use strict;
use warnings;

my $line;
my @lines;

while ($line = <STDIN>)
{
	push @lines, $line;
}
print reverse @lines;
