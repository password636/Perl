use strict;
use warnings;

my @ary = qw/b/;
#print $#ary;

use JT;

JT::error_handler("a", "b", "c");
JT->error_handler("a", "b", "c");

#print JT::RESULT->{JT::PASS};
#
$! = 99;
die "adfasf\n";
