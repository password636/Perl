use strict;
use warnings;

my $line;
my @lines;
my @names = qw/hello fred betty barney dino wilma pebbles bamm-bamm/;

while ($line = <STDIN>)
{
	push @lines, $line;
}
chomp @lines;
for (@lines)
{
	print $names[$_], "\n";
}
