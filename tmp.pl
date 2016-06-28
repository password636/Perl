use strict;
use warnings;

my @names = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
my $result = &which_element_is("wilma", @names);
print "$result\n";

sub which_element_is
{
	my $element = shift;
	my @array = @_;	
	my $pos;
	for (0..$#array)
	{
		return $_ if "$element" eq "$array[$_]";
	}
	-1;
}

