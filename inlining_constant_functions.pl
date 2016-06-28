use strict;
use warnings;

sub my_age ()	# () explicitly means that they take no arguments at all. Inline symbol.
{
	33;
}

# when a subroutine takes 0 argument, can use its name only,
# which makes a subroutine call like a variable 
# this is how use constant is implemented

print my_age, "\n";	# maybe inlined
print &my_age, "\n";	# use &, never inlined

sub my_age1	# no (), never considering inline it.
{
	33;
}


