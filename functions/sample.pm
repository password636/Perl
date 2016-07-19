package sample;

sub afunc
{
	my $self = shift;
	print "afunc\n";
	#my ($p, $f, $l) = caller;
	#print "$p $f $l\n";
	print (caller(0)[3], "\n");
	print ((caller(1))[3], "\n");
	print ((caller(2))[3], "\n");
}

1;
