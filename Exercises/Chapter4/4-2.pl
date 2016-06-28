use strict;
use warnings;

sub total
{
	my @numbers = @_;

	my $sum;
	for(@numbers)
	{
		$sum += $_;
	}
	return $sum;
}
my $fred_total = total(1..1000);
print "The total of \@fred is $fred_total.\n";
