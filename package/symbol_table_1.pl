#use strict;
use warnings;

package Foo;

#my @array = 1..10;
@array = 1..10;
#my %hash = (name=>"lizl");
%hash = (name=>"lizl");
#my $scalar = "hello, world\n";
$scalar = "hello, world\n";
sub add
{
	$_[0] + $_[1];
}

while(my ($key, $value) = each %Foo::)
{
	print "$key\t$value\n";
}

print *scalar{SCALAR}, "\n";

foreach my $item (%{*scalar})
{
	print $item, "\n";
}
__END__
foreach my $entry (%Foo::)
{
	print "$entry\n";
}
foreach my $entry ( keys %Foo:: )
{
	print "-" x 30, "Name: $entry\n";
	print "\tscalar is defined\n" if defined ${$entry};
	print "\tarray is defined\n" if defined @{$entry};
	print "\thash is defined\n" if defined %{$entry};
	print "\tsub is defined\n" if defined &{$entry};
}
