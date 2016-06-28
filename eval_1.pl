use strict;
use warnings;

# error-trapping mechanism. Prevent the program from terminating prematurely
my $n;
eval {
	$n = 1 / 0;
	print "hello, world\n";
};

print "Error caught in eval: $@" if $@;

print "still going ...\n";
