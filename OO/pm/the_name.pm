package the_name;

sub new
{
	my $self = 
	{
		name=>"lizl",
		gender=>"male",	
	};
	my $class = shift;
	bless $self, $class;
	return $self;
}

sub getName
{
	my $self = shift;
	return $self->{name};
}

1;
