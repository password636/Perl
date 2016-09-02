use strict;
use warnings;

#perl shift_pop.pl a b c
my $var = shift;
my $var1 = pop;

print "$var\n";
print "$var1\n";

sub myFunc
{
	my $var = shift;
	my $var1 = pop;
	print "$var\n";
	print "$var1\n";
}

myFunc "arg1", "arg2", "arg3";
