use strict;
use warnings;

my @names = qw/ fred barney betty dino wilma pebbles bamm-bamm /;
my $result = &which_element_is("wilma", @names);
print "$result\n";

sub which_element_is
{
	my ($want, @names) = @_;	#

	for(0..$#names)
	{
		if($want eq $names[$_])
		{
			return $_;
		}
	}
	-1;
}

