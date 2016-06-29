use strict;
use warnings;


sub checkNec
{
	my $myitems = shift;
	my @necessaries = qw/glass shirt water money/;
	for my $item ( @necessaries )
	{
		unless (grep $_ eq $item, @$myitems)
		{
			print "missing $item\n";
		}
	}
}

my @stuff = qw/glass short cola money/;
&checkNec(\@stuff);
