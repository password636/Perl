use strict;
use warnings;

my @welcomed;
sub greet
{
	my ($person) = @_;

	if(! @welcomed)
	{
		print "Hi $person! You are the first one here!\n";
	}
	else
	{
		print "Hi $person! I've seen: @welcomed\n";
=comment
		for(@welcomed)
		{
			print "$_ ";
		}
		print "\n";
=cut
	}
	push @welcomed, $person;
}
greet( "Fred" );
greet( "Barney" );
greet( "Wilma" );
greet( "Betty" );
