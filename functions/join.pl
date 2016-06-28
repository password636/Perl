use warnings;
use strict;

## join EXPR, LIST
## join glue, elements
## normal uses >=2 elements

# join a list literal
my $x = join ":", 4, 6, 8, 10, 12;
printf "$x\n";
# join an array (which has a list data)
my @array = qw/4 6 8 10 12/;
$x = join ':', @array;
printf "$x\n";
# join a hash (which has a list data)
my %hash = (
	zongliang => 1,
	li => 2
);
$x = join ':', %hash;
printf "$x\n";

### abnormal uses, 0 or 1 element 
# 1 element to glue
$x = join "foo", "bar";	# only "bar", not "foobar"
printf "$x\n";		
# 0 element to glue
my @empty_array;
$x = join "foo", @empty_array;	# empty string
printf "$x\n";		

