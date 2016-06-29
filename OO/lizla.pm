package lizl;

sub new
{
	my $info = {
		height => 170,
		weight => 80,
	};
	bless $info;
	return $info;
}

sub getHei
{
	my $self = shift;
	return $self->{height};
}



1;
