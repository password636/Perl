use strict;
use warnings;

print "Please enter some strings: ";
chomp (my @strings = <STDIN>);
my $ruler = "1234567890"x4;
print "$ruler\n";
for(@strings)
{
	printf "%20s\n", $_;
}
