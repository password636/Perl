#use strict;
use warnings;

$aa = "simple string";
@bb = 1..10;
while (my ($key, $value) = each %main::)
{
	print "$key\t$value\n";
}

package Foo;

our @n = 1..3;
our $string = "hello";
our %dict = (name=>'lizl');
sub add { $_[0] + $_[1] }


while (my ($key, $value) = each %Foo::)
{
	print "$key\t$value\n";
}

#print "$_\n" for keys %Foo::;
#print "$_\n" for values %Foo::;
#use Data::Dumper;
#print Dumper(\%Foo::);

__END__
print *Foo::n{ARRAY},"\n";

my %hh = (
	ka => \$string
);

print "$_\n" for values %hh;

my $rr = \STDOUT;
print ${$rr} "helloa\n";


__END__
for (keys %Foo::)
{
	print "$_\n";
	print "scalar is defined\n" if defined ${$_};
	print "array is defined\n" if defined @{$_};
	print "hash is defined\n" if defined %{$_};
	print "subroutine is defined\n" if defined &{$_};
}

delete $Foo::{'string'};
print "after delete\n";
print "$_\n" for keys %Foo::;
print "$string\n";
print "$_\n" for values %Foo::;
