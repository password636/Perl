use strict;
use warnings;

my $result;

# two numeric operators
$result = 10.5 % 3.2;	# modulus operator
print $result, "\n";
$result = 2 ** 10; 	# exponentiation operator
print $result, "\n";

my @sorted = sort 97..102;	# default sorting in ASCII order, automatic conversion N->S
print "@sorted\n";

# value of a list assignment in a scalar context
my $x = ( ($fred, $barney) = (7,7,7) );
printf "$x\n";
