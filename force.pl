use strict;
use warnings;


my $pat  = "(" x 999;
   $pat .= "a";
   $pat .= ")" x 999;
#/^($pat)\1000$/;   #  Matches 'aa'; there are 1000 capture groups.

$_ = $ARGV[0];
#if (/^$pat\1000$/)
#if (/^($pat)\07$/)
if (/^df\7$/)
{
	print "Matched\n";
}


my @array = qw/a b c/;
print "@array[2,0]\n";

my %hash = (
	a=>1,
	b=>2,
);

print "@hash{'b', 'a'}";
