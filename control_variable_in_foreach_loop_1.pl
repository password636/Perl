use strict;
use warnings;

my $vv = 19;
print $vv, "\n";

my @rray = ('a'..'f');
print "@rray\n";

foreach $vv (@rray)
{
	$vv = 'b';	# alias
}
print $vv, "\n";	# save-and-restore
print "@rray\n";

print "$_\n" foreach 1..10;	# default is $_
