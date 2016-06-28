use strict;
use warnings;

# return value of chomp
my $str = "hello";
my $r = chomp $str;
print $r, "\n";		# 0

$str = "hello\n";
$r = chomp $str;	# 1
print $r, "\n";

$str = "hello\n\n";
$r = chomp $str;	# 1
print $r, "\n";

my @array = ("a", "b\n", "c\n\n");
$r = chomp @array;	# 2
print $r, "\n";
