use strict;
use warnings;

sub total
{
	my @numbers = @_;

	my $sum;
	for(@numbers)
	{
		$sum += $_;	# string->number automatic conversion for the list returned by <STDIN>
	}
	return $sum;
}
my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some numbers on separate lines: ";
my $user_total = total (<STDIN>);	# [S] argument to a function/subroution is list context
print "The total of those numbers is $user_total.\n";
