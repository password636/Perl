use strict;
use warnings;


sub ff
{
	my $dd = 2>1;
	if ( 1 > 0 && 0 > 1)
	{
		print "ok\n";
	}
}

my $rr = ff;
print "$rr\n";
print "undef\n" unless defined $rr;
print "empty string\n" if $rr eq "";
