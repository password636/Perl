use strict;
use warnings;

#my $what = 'fred|barney';
my $what = 'fred';

if ($ARGV[0] =~ /($what){3}/)
{
	print "matched!\n";
}
