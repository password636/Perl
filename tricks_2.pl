use strict;
use warnings;

my $aa;		# hmm, a scalar variable, but what scalar exactly?
$aa->{name} = "lizl";	# a reference to hash
$aa->{age}  = 33;
print "My name is $aa->{name}, and I'm $aa->{age} years old\n";

my $bb;
$bb->[2] = "a";
$bb->[5] = 10;
print "$bb->[2] $bb->[5]\n";
