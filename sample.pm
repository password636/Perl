package sample;
use Data::Dumper;
sub new
{
	my $name = shift;
	my $self = {};
	bless $self, $name;
	return $self;
}	

sub samplefunc
{
	print "samplefunc\n";

#	print Dumper(\%sample::);

	exit;
}

1;
