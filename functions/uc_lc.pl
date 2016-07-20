use strict;
use warnings;

# ways to uppercase or lowercase
print uc($ARGV[0]), "\n";
print lc($ARGV[0]), "\n";

# must be in double-quoted string literals
print "\U$ARGV[0]", "\n";
print "\L$ARGV[0]", "\n";

print "\U$ARGV[0]\E, there", "\n";
print "\L$ARGV[0]\E, there", "\n";
