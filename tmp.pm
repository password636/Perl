package tmp;
use strict;
use warnings;

sub new
{
	my $class = ref($_[0]) || shift;
	my $self = {
		name=>'lizl',
		age=>33,
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
