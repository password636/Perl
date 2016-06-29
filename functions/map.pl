use strict;
use warnings;

my @array = qw/a b c d e/;
print "@array\n";
my @r = map { $_.= 'a' } @array;
print "@r\n";
print "@array\n";


my @data = (4.75, 1.5, 2, 1234, 6.9456, 12345678.9, 29.95, -7.1234);
my @formatted_data = map { &big_money($_) } @data;
sub big_money 
{
	my $number = sprintf "%.2f", shift @_;
# Add one comma each time through the do-nothing loop
	1 while $number =~ s/^(-?\d+)(\d\d\d)/$1,$2/;
# Put the dollar sign in the right place
	$number =~ s/^(-?)/$1\$/;
	$number;
}
print "@formatted_data\n";
print "@data\n";
