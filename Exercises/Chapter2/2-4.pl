use strict;
use warnings;

print "Please enter one number:";
chomp (my $r = <STDIN>);
print "Please enter another number:";
chomp (my $s = <STDIN>);
my $c = $r * $s;
printf "Product is $c.\n";
