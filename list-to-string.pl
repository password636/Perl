use strict;
use warnings;

# gule list elements into a single string
my @words = qw/I love China/;

print join(":", @words), "\n";	# 1. the join function

$" = ":";			
print "@words\n";		# 2. array interpolation in double-quoted string
# but need to change $" back to a single space hereafter
