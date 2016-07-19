use strict;
use warnings;

use sample;

sub func
{
	func1();
}

sub func1
{
	print "func1\n";
	sample->afunc();
}

sub func2
{
	print "func2\n";
}
func1;
