use strict;
use warnings;

# gule list elements into a single string
my @words = qw/I love China/;

print join(":", @words), "\n";	# 1. the join function

$" = ":";			# 2. variable interpolation in double-quoted string
print "@words\n";
# but need to change $" back to a single space hereafter
