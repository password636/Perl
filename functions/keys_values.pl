use strict;
use warnings;

my %lizl = (
	name => "LiZongliang",
	gender => "Male",
	height => "170",
);

my @keys = keys %lizl;
my @values = values %lizl;

print "@keys\n";
print "@values\n";

print "the hash has ", scalar keys %lizl, " pairs\n";
print "the hash has ", scalar values %lizl, " pairs\n";
