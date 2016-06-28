use strict;
use warnings;

our $lizl = 1;
{
	$lizl = 2;
	print "$lizl\n";
}
print "$lizl\n";

my $wish = 'a';
{
	my $wish = 'b';
	print "$wish\n";
}
print "$wish\n";

__END__
foreach my $item (keys %::)
{
	print "$item\n";
}
