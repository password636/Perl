use strict;
use warnings;

# two features
my $vv = 19;
print $vv, "\n";

my @rray = ('a'..'f');
print "@rray\n";

foreach $vv (@rray)
{
	$vv = 'b';	# control variable is alias
}
print $vv, "\n";	# control variable is save-and-restore
print "@rray\n";
