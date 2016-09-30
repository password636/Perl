use strict;
use warnings;

for my $var (1..10)
{
	print "$var\n";
}

my $var1;
#print "$var\n";
for $var1 (1..10)
{
	print "$var1\n";
}

#$main::kkk = 0;
if ( $main::kkk + 1 == 1)
{
	print "equals zero\n";
}
