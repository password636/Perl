use strict;
use warnings;

my %times;

print "Please enter a series of words on separate lines: ";
while (<STDIN>)
{
	chomp;
	$times{$_}++;
}

for (sort keys %times)
{
	printf "%s\t%d\n", $_, $times{$_};
}
