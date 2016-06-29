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

# default $_ in grep 
my @heights = (165, 170, 175, 180, 185, 190);
print "@heights\n";
my @qualified = grep { ($_ += 2) > 170 } @heights;
print "@heights\n";
print "@qualified\n";
