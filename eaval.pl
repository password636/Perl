use strict;
use warnings;

my $r = eval
{
	print "ok\n";
	die "safsa\n";
	#return 100;
};
print "$r\n";

@_ = qw/a b c/;
print $#{_};
