use strict;
use warnings;

sub average
{
	my $sum;

	for(@_)
	{
		$sum += $_;
	}
	$sum / @_;
}

sub above_average
{
	my $average = &average(@_);
	my @list;
	for(@_)
	{
		if ($_ > $average)
		{
			push @list, $_;
		}
	}
	@list;
}

my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";
