use strict;
use warnings;

sub f1
{
eval{
	f2();
};
}
sub f2
{
	f3();
}
sub f3
{
	my @mycaller = caller(0);
	my @mycaller1 = caller(1);
	my @mycaller2 = caller(2);
	my @mycaller3 = caller(3);
	print "0 @mycaller\n";
	print "1 @mycaller1\n";
	print "2 @mycaller2\n";
	print "3 @mycaller3\n";
}
f1;
__END__
use forcaller;
forcaller::f4();
