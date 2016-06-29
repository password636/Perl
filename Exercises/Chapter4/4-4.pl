use strict;
use warnings;

my @welcomed;
sub greet
{
	my ($person) = @_;

	if(! @welcomed)
	{ # empty
		print "Hi $person! You are the first one here!\n";
	}
	else
	{
		print "Hi $person! $welcomed[-1] is also here!\n";
	}
	push @welcomed, $person;
}
greet( "Fred" );
greet( "Barney" );
