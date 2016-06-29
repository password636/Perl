use strict;
use warnings;

my $lizl = 22;
my @lizl = qw/1 2 3 4/;
my %lizl = (age=>33);
sub lizl { "lizl" }


print $*lizl, "\n";

__END__
for (keys %main::)
{
	print $_, "\n";
}

