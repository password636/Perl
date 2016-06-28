use strict;
use warnings;

sub ppp
{
	print "\n";
	while (my ($key, $value) = each %INC)
	{
		printf "%s\t%s\n", $key, $value;
	}
	print "\n";
}
sub ttt
{
	print "@INC\n";
}
#use File::Basename;
#print dirname ("asdf/root/file"), "\n";
do 'utility.pl';	# filename
require 'must.pl';	# require 'filename'; OR require "filename";
&printMessage("hello");
&printMessage1("hello");
