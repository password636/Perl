use strict;
use warnings;

### Return a "ture/false" value or can be thought of as returning a "true/false" value

### Boolean context: if() while(), unless() until()
### Some return a "true/false" value, so they're typically used with those control structures.

## pattern match (=~ operator)
# string   =~ //
# variable =~ s///
# NOT exactly return a true/false value, return a number or string which stands for true/false value, 
# so they are typically used in Boolean context
$_ = "yabba dabba doo";
if ( /abba/ ) # $_ =~ /abba/ 
{
	print "It matched.\n";
}

if ( s/abba/hello/ )	# $_ =~ s/abba/hello/
{
	print "replaced successfully: $_\n";
}

## open() 
die "open() failed\n" if ! open TEST, "<", "$0";	# open a file handle routine
close TEST;

## exists() 
my %hash = qw {
	fred flintstone
	barney dino
};
if ( exists $hash{barney} )
{
	print "the key exists.\n";
}

## list in a scalar context returns number of elements
if ( %hash )	# if the hash is empty
{# if not empty
	print "Not an empty hash.\n";
}	


my @array;
if ( @array )	# if the array is empty
{# NOT empty
	print "Not an empty array\n";
}
else
{# empty
	print "Empty array\n";
}

## defined() 
## logical not operator ! : get the opposite of a Boolean value
my $hello;
if ( ! defined $hello )
{
	print STDERR "\$hello not defined\n";
}

## Relational/Comparison Operators
# < > <= >= == !=
# lt gt le ge eq ne


## Many of file tests return a true/false value, but several give something more interesting.
# -f -l
