use strict;
use warnings;

$_ = "myballkick";
my $var = "ball";

if (/my${var}kick/) 
{
	print "M\n";
}

$_ = "mya b ckick";
my @array = qw/a b c/;
if (/my@{array}kick/)
{
	print "M1\n";
}

$_ = "myKIck";
if (/my\Uki\Eck/)
{
	print "M2\n";
}

$_ = "myKIck";
if (s/\Uk\E/@array[1,1,0]/)
{
	print "$_\n";
}
