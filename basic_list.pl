use warnings;
use strict;

### list assignment
# assign multiple scalar variables at a time
my ($fred, $barney, $wilma) = ("fred", "barney", "wilma");
printf "$fred $barney $wilma\n";
# swap values of two scalar variables, don't need tmp variable
($fred, $barney) = ($barney, $fred);
printf "$fred $barney\n";
# or more variables ...
($fred, $barney, $wilma) = ("fred", "barney", "wilma");
($wilma, $fred, $barney) = ($barney, $fred, $wilma);
printf "$wilma $fred $barney\n";

# more variables, note that $wilma gets re-assigned to undef, not keeping old value.
($fred, $barney, $wilma) = ("fred", "barney");
if ( ! defined $wilma )
{
	printf "\$wilma is undef\n";
}

# more values
($fred, $barney) = ("fred", "barney", "wilma");
printf "$fred $barney\n";

### list separator
# trailing separator is ignored
my @fred = (1, 2, 3, );
my @barney = (1 => 2 => 3 => );
my @wilma = (1 => 2, 3 => );	# grammtically correct, but not recommended for an array
printf "$fred[0] $barney[1] $wilma[2]\n";

### empty list [S]
my @tiny = ();	# create an empty array, not needed actually.
my @array;	# emtpy array 

### [S]
my @rocks1 = qw/bedrock slate lava/;
my @quarry = (@rocks1);		# list element can only be scalar, though can be written like this
print scalar @quarry, "\n";	# 3

