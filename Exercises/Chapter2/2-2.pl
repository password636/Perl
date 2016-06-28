use strict;
use warnings;

print "Please enter a radius: ";
chomp (my $r = <STDIN>);
my $pi = 3.141592654;
my $c = 2 * $pi * $r;
printf "Circumference is $c.\n";
