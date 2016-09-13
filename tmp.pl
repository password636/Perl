use strict;
use warnings;

if ( "c 2aa1 b" =~ /\b(2aa1)\b/)
{
	print "$1\n";
}


use tmp;
my $obj = new tmp;
print $obj->getName();

my @array2 = qw(a \) b);
print "@array2\n";


my %hash = (
	name=>'lizl',
	age=>18,
);

