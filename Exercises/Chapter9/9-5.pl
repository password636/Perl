use strict;
use warnings;

my $addline = "## Copyright (C) 20XX by Yours Truly\n";

my %modify;
for(@ARGV)
{
	$modify{$_} = 1;
}

while(<>)
{
	delete $modify{$ARGV} if /^## Copy/;
}

@ARGV = keys %modify;
print "@ARGV\n";
$^I = ".bak";
while(<>)
{
	$_ .= $addline if /^#!/;
	print;
}
