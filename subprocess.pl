use strict;
use warnings;

my $file = $ARGV[0];
until (-f $file)
{
	print "wait for existence of $file\n";
	sleep 1;
}
