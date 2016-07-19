use strict;
use warnings;

our $lizl = 1;
{
	my $lizl = 2;
	print "$lizl\n";
	our $lizl;
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
