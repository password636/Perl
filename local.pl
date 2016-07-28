use strict;
use warnings;

# local to the "call chain"
our $var = 8;
print "out: $var\n";

sub func1
{
	print "func1: $var\n";
	$var++;
	func2();
}
sub func
{
	#local $var = 9;
	local $var;
	print "func: $var\n";
	func1;
}
sub func2
{
	print "func2: $var\n";
}
print "out: $var\n";
func;
