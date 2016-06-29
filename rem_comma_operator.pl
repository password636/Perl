use strict;
use warnings;

# binary comma operator in scalar context
#########################################

# sequence
my $n;
$n += 2, print "$n\n";
# same as follows:
# $n += 2;
# print "$n\n";

my $l = 10;
my $m = ($n, $l);	# return value is the right operand
print "$m\n";

__END__
=
,

my $foo, $bar = 1;                  # WRONG
That has the same effect as
           my $foo;
           $bar = 1;
