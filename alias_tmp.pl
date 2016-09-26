use strict;
use warnings;

my @ary = qw(a b c);

foreach (@ary)
{
	$_ = $_."k";
}
print "@ary\n";
