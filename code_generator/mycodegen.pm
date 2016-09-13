package mycodegen;

CHECK
{
	print "Now begin to call my code generator ...\n";
}

AUTOLOAD
{
	print "sorry, not defined $AUTOLOAD\n";
}	

sub DESTROY
{
	print "called destory\n";
}

sub new
{
	my $class = ref($_[0]) || shift;
	my $self = {
		name=>"lizl",
	};
	bless $self, $class;
	return $self;
}

sub getName
{
	my $self = shift;
	return $self->{name};
}

1;
