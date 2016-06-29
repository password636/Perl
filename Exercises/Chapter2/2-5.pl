use strict;
use warnings;

print "Please enter a string: ";
my $s = <STDIN>;
print "Please enter a number: ";
chomp (my $n = <STDIN>);
print $s x $n;
