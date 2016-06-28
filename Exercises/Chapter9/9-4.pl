use strict;
use warnings;

$^I = ".bak";
my $addline = "## Copyright (C) 20XX by Yours Truly\n";

while(<>)
{
	print;
	print $addline if (/^#!/)
}
