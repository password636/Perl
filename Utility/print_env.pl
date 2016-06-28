use strict;
use warnings;

$ENV{ZERO} = 0;
$ENV{EMPTY} = '';
$ENV{UNDEFINED} = undef;

my $longest = 0;
for my $key ( keys %ENV )
{
	my $key_length = length( $key );
	$longest = $key_length if $key_length > $longest;
}
for my $key ( sort keys %ENV )
{
	printf "%-${longest}s %s\n", $key,
	$ENV{$key} ? $ENV{$key} : "(undefined)";	# Boolean_Context ? :
}
