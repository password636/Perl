use warnings;
use strict;

my @fred = 1..10;		
my @barney = reverse 1..10;	# how to get a downhill list literal

# escape sequences in a qw shortcut
# \\ -> \
# \delimiter -> literal delimiter
my @wilma = qw ^ a b \^ c ^;	# avoid this kind of coding although it's legal, try use other delimiters
printf "$wilma[2]\n";

my $wilma = "haha";
my %wilma = (one=>two=>three=>four=>);
printf "\$wilma[2]\n";	# wants literal $wilma[2]
printf "$wilma\[2]\n";	# wants $wilma value followed by literal [2]
printf "$wilma\{three}\n"; # wants $wilma value followed by literal {three}

