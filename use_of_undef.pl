use warnings;
use strict;

# although undef is neither a number nor a string, but when
# using undef as a number, it acts like 0
my $sum; 	# gets undef
my $n = 1;
while($n <= 10)
{
	$sum += $n;	# numeric accumulator
	$n += 2;
}
print "$sum\n";

# using undef as a string, it acts like an empty string
my $base;	# gets undef	 
$n = 0; 
while($n < 3)
{
	$base .= " more text";	#
	$n++;
}
print "$base\n";

