use strict;
use warnings;

our $i = 0;

sub t_func1 {
local $i = 1;
print "\$i = $i\n";
}

sub t_func2 {
local our $i = 2;
print "\$i = $i\n";
}

t_func1();
t_func2();
print "\$i = $i\n";
