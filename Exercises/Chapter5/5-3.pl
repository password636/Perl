use strict;
use warnings;

print "Please enter some strings: ";
chomp (my @strings = <STDIN>);
my $width = shift @strings;
my $ruler = "1234567890"x($width/10+1);
print "$ruler\n";
for(@strings)
{
	printf "%${width}s\n", $_;
}
