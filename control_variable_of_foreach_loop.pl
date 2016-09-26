use strict;
use warnings;

my $vv = 19;
print $vv, "\n";

my @rray = ('a'..'f');
print "@rray\n";

for $vv (@rray)
{
	$vv = 'b';	# 1. alias
}
print $vv, "\n";	# 2. save-and-restore
print "@rray\n";

print "$_\n" for 1..10;	# 3. default is $_
