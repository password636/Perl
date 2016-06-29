use warnings;
use strict;
	
# the control variable of a foreach loop
my @wilma = qw ^ a b c ^;	
printf "@wilma\n";

foreach (@wilma)
{
	$_ .= 'w';	#
}
printf "@wilma\n";
