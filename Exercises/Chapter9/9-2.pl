use strict;
use warnings;

my $filename = $ARGV[0];

my $out = $filename;
$out =~ s/(\.\w+)?$/.out/;

die "can't open OUT: $!" if ! open OUT, ">", $out;
die "can't open IN: $!" if ! open IN, "<", $filename;
while(<IN>)
{
	s/Fred/Larry/ig;
	print OUT $_;
}
close IN;
close OUT;
