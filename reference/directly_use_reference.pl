use strict;
use warnings;

my $any;	# could be a number, string, or reference

$any->{name} = "lizl";	# now is a hash ref once get used like this
print ref($any), "\n";

my %hash = %$any;
print ( join (" ", %hash), "\n");

$any->[10] = "ten";	# error, $any is hash ref, can't be ref of other type 
print ref($any), "\n";

print "aa\n";
