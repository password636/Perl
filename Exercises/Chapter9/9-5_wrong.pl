use strict;
use warnings;

my $addline = "## Copyright (C) 20XX by Yours Truly\n";
my @modify;

while(<>)
{
	push @modify, $ARGV unless /^## Copy/;
}

@ARGV = @modify;
print "@ARGV\n";
$^I = ".bak";
while(<>)
{
	$_ .= $addline if /^#!/;
	print;
}
