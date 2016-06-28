use strict;
use warnings;

# sigil indicates ...
my $fred = 1;		# scalar variable
my @fred = 2..10;	# array variable
my %fred = (		# hash variable
	zongliang => "li",
	no => "future",
);

printf "$fred\n";
printf "$fred[0]\n";
printf "$fred{no}\n";

sub fred		# subroutine name
{
	printf "fred subroutine\n";
}
&fred;
