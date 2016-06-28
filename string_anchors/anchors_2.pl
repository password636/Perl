use warnings;
use strict;

# compare to see the difference
$_ = "a\n\nb\nc\n";
print;
s/^/d/gm;
print;

