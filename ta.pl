use strict;
use warnings;

my $port1 = "10.31.69.142/8/1";
my $port1_wrong = $port1;
$port1_wrong =~ s#\d+$#100#; #"10.39.61.164/8/100";
print $port1_wrong, "\n";

