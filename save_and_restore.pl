use warnings;
use strict;

# the control variable of a foreach loop
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

# global @_
@_ = qw/one two there/;	# can't use "my" for global @_

sub fred
{
	printf "my arguments are @_\n";
}
& fred (1,2,3);
printf "@_\n";

