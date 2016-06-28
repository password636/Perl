use strict;
use warnings;

=comment
my $my_first_reference = \@lizl;
my $my_second_reference = \@lizl;

if ($my_first_reference eq $my_second_reference)
{
	print "same reference\n";
}
print "$my_first_reference\n";

print "@{$my_first_reference}\n"
=cut

# grep EXPR,LIST
sub check
{
	my $who = shift;
	my $items = shift;	# a reference to an array

	my @required = qw/preserver sunscreen water_bottle jacket/;
	for my $item (@required)
	{	
		unless (grep $item eq $_, @{$items})	# list in a scalar context
		{
			print "$who is missing $item\n";
		}
	}
}


my @lizl = qw/blue_shirt hat jacket preserver sunscreen/;
&check ("lizl", \@lizl);

my $r = \@lizl;
print "${$r}[0]\n";
