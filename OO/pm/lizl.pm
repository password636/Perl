package lizl;

sub new
{
	my $self = {
		_name => "lizl",
		_gender => "male",
		_money => "no",
	};
	bless $self;
	return $self;
}

sub getName
{
	my $self = shift;
	return $self->{_name};
}

sub getNameByClass
{
	my $self = shift;
	return "lizlpackage";
}
sub getGender
{
	my $self = shift;
	return $self->{_gender};
}



1;
