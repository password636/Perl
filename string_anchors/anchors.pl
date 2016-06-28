use warnings;
use strict;

$_ = "abc\n\n";
s/$/d/; 
print;

$_ = "abc\n\n";
s/$/d/g;
print;


