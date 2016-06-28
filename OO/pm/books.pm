package books;

sub new
{
	my $self = {
		title => "The C Programming Language",
		author => "K&R",
		cover => "black",
	};
	bless $self;
	return $self;
}

sub new1
{
	my $name = shift;
	my $class = ref($name) || $name;
	my $self = {
		title => "The C Programming Language",
		author => "K&R",
		cover => "black",
	};
	bless $self, $class;
	return $self;
}

sub newp
{
	my $this = shift;
	my $self = {
		title => shift,
		author => shift,
		cover => shift,
	};
	bless $self;
	return $self;
}

sub getTitle
{
	my $self = shift;
	return $self->{title};
}

sub getAuthor
{
	my $self = shift;
	return $self->{author};
}


1;
