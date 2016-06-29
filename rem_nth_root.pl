use strict;
use warnings;

# kai fang operation
my $m = 27;
$m **= 1/3;
print $m, "\n";

print 1024 ** (1/10), "\n";	# 10th root
print 27 ** (1/3), "\n";	# cube root
__END__
1. 
   **
   /
   **= (op= has the same precedence as =)
2. a ** m/n is "the nth root of (a ** m)"

