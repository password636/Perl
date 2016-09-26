use strict;
use warnings;


my %hash;
$hash{name} = "lizl";
for my $kk (1..10)
{
	print "$hash{name}\n";
}

# array element or hash element can't be the control variable
# control variable must be a simple scalar
my @fred;

for $fred[0] (1..10)	# error
{
	printf $fred[0];
}
