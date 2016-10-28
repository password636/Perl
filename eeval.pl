use strict;
use warnings;

for my $operator (qw/+ - */)
{
	my $sum = eval "3 $operator 2";
	print "$sum\n";
}

eval ' my $answer = '; 
print "error message: $@" if $@;
