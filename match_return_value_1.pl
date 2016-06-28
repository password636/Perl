use strict;
use warnings;

# S =~ m// in list context returns a list of Numbered Match Variables
my $s = "Inside The C++ Object Model";
my ($aa, $bb, $cc) = ($s =~ /Inside (\w+) (.+) Object (\w+)/);
print "$aa $bb $cc\n";

my @array = ($s =~ /Inside (\w+) (.+) Object (\w+)/);
print "@array\n";
