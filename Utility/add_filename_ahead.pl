use strict;
use warnings;

my $filename;
my $lines;
for(@ARGV)
{
	$filename = $_;
	open FILE, $_ or die "Can't open '$_': $!";
	$lines = join '', <FILE>;	# read a file to a string
	$lines =~ s/^/$_: /gm;		# 
	print "$lines";
}
