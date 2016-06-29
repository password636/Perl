use strict;
use warnings;

my $count;
while (<STDIN>)
{
	if ($_ eq "\n")
	{
		print "empty line encountered.\n";
		$count++;
	}	
}
print "$count empty lines in total.\n";
