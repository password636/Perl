use strict;
use warnings;

my $line;
my @lines;

while ($line = <STDIN>)
{
	push @lines, $line;
}
chomp @lines;
@lines = sort @lines;
print "@lines\n";
