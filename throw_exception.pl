use strict;
use warnings;

eval
{
	die "fff\n";
	print "kkk\n";
};
print "caught $@\n" if $@;
