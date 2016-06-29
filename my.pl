use strict;
use warnings;

sub anyFunc
{
	my ($arg1, $arg2) = @_;	# 
	print "dummy\n";
}

my @array = qw/a b c d/;
my (undef, $m, $n) = @array;	# skip assignment of initial values
print "$m $n\n";	# b c

__END__
1. A my declares the listed variables to be local (lexically) to the enclosing block, file, or eval. If more than one variable is listed, the list must be placed in parentheses.

2. Note that with a parenthesised list, undef can be used as a dummy placeholder
