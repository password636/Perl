use strict;
use warnings;

my %names = (
	fred => "flintstone",
	barney => "rubble",
	wilma => "flintstone",
);

print "Please enter a given name: ";
chomp (my $given = <STDIN>);
if (exists $names{$given})
{
	print "$names{$given}\n";
}
else
{
	die "no such given name\n";
}
