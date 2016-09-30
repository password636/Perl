use strict;
use warnings;

my @array = qw/a b c/;
my $str = "a" . eval @array;
print $str, "\n";

my $sub = "sub { print \"\$_[0] @array\n\" }";
my $t = eval $sub;
$t->("fkd");

my $p = 2;
eval "$p = 9";
sub ff {}
sub ff {}
print $p, "\n";
CHECK
{
	print $p, "\n";
}

my $ddf = eval "2+2";
print $ddf, "\n";

