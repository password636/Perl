use strict;
use warnings;

sub do_some
{
	last;	#
	print "do_some\n";
}

for (1..10)
{
	print $_, "\n";
	&do_some;
}
