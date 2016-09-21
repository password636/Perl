use strict;
use warnings;

my $_ = "a:b!c!d";
my @array = split /[:]/;
print scalar @array, "\n";
print "|$_|\n" for @array;
