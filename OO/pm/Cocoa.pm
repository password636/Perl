package Cocoa;

# default constructor
sub new
{
	my $this = {
		_name => "lizl",
		_shirt => "white",
		_hat => "red",
	};
	bless $this;
	return $this;
}
# parameterized constructor
sub newp
{
	my $class = shift;
	my $this = {
		_name => shift,
		_shirt => shift,
		_hat => shift,
	};
	bless $this;
	return $this;
}

sub getName
{
	my $self = shift;
	return $self->{_name};
}

sub getShirt
{
	my $self = shift;
	return $self->{_shirt};
}

sub getHat
{
	my $self = shift;
	return $self->{_hat};
}

sub getAll
{
	my $self = shift;
	return ($self->getName(), $self->getShirt(), $self->getHat);
}
1;
