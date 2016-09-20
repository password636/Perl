use strict;
use warnings;
use Data::Dumper;

my %hash = (
	name=>'lizl',
	age=>33,
);

undef $hash{name};
print Dumper(%hash);


delete $hash{age};
print Dumper(%hash);
