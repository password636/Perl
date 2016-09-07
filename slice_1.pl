use strict;
use warnings;

print qw/a b c d e/[3,0,3], "\n";
print ( ('a', 'b', 'c', 'd', 'e')[3,0,3], "\n" );
print "qw/a b c d e/[3,0,3]\n";

my @nation = ('Japan', 'China', 'America');
print "@nation[-1, 0, 1]\n";

my %properties = (
	name=>'lizl',
	age=>33,
);

print "@properties{'age','name'}\n";
print @properties{'age','name'}, "\n";
print "%properties\n";
