use strict;
use warnings;

my @fred;
$fred[99] = 99;
printf "%d elements\n", scalar @fred;	# automatically extended

if ( ! defined $fred[1] )
{
	printf "automatic extended elements are undef\n";	# automatic extended elements get the undef value
}

my @wilma;
$wilma[49] = "hello";	# extend to 50 elements
$wilma[59] = "world";	# extend to another 10 elements
print scalar @wilma, " elements\n";

# 2 sets of index: positive and negative 
# 	0   1  2  3
# 	-4 -3 -2 -1

# 3 ways to get the last element of an array
printf "$fred[$#fred]\n";	# $#name: the last index, the highest index
printf "$fred[-1]\n";		# preferred
printf "$fred[99]\n";

# index: number context [S]
my $y = 2 * 4;			# $y holds a number 8
my @barney = qw% a b c d e f g h i j k%;
printf "$barney[$y]\n";		# i, 8 
printf "$barney[$y-1]\n";	# h, 8 - 1 = 7

$y = "2 * 4";			# $y holds a string 
printf "$barney[$y]\n";		# c, "2 * 4" -> 2
printf "$barney[$y-1]\n";	# b, "2 * 4" - 1 = 1. This number context is caused by minus operator

# moreover, integer context
printf "$barney[2.6]\n";	# c, 2
